import 'dart:async';
import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:educacao_criativa/get.dart';
import 'package:educacao_criativa/models/estacao_model.dart';
import 'package:educacao_criativa/services/http_request/api_fetch.dart';
import 'package:educacao_criativa/services/http_request/api_request.dart';
import 'package:educacao_criativa/services/http_request/bloc_firebase_registros/firebase_registros_model.dart';
import 'package:educacao_criativa/services/http_request/data_control_enum.dart';
import 'package:educacao_criativa/services/http_request/db_hive_keys_model.dart';
import 'package:educacao_criativa/services/notification/bloc/notification_event.dart';
import 'package:hive/hive.dart';

class EstacoesRepository {
  final _dataControlEnum = DataControlEnum.celulaFetch;
  DataControlEnum get dataControlEnum => _dataControlEnum;

  final List<EstacaoModel> _data = [];
  List<EstacaoModel> get data => _data;

  String _search = '';
  String get search => _search;

  final bool _asc = true;
  bool get asc => _asc;

  final String _order = '';
  String get order => _order;

  bool _isFetching = false;
  bool get isFetching => _isFetching;

  Future<List<EstacaoModel>> fetch({bool forceReload = false}) async {
    _isFetching = true;
    Completer notificationCompleter = Completer();

    notificationBloc.add(
      LoadingNotificationEvent(message: 'Obtendo estações', completer: notificationCompleter),
    );

    bool needsInit = false;

    Box<dynamic> boxKeys = await Hive.openBox('KEYS');
    Box<dynamic> boxData = await Hive.openBox(dataControlEnum.firebaseCollection);

    DBHiveKeysModel? boxEntry = await boxKeys.get(dataControlEnum.firebaseCollection);

    String hiveFirebaseID = boxEntry?.firebaseID ?? 'init';
    DateTime? hiveDateTime = DateTime.tryParse(boxEntry?.createdAt ?? '');
    Timestamp hiveTimestamp = Timestamp.fromDate(hiveDateTime ?? DateTime.now());

    if (forceReload || boxData.isEmpty) needsInit = true;

    if (needsInit) {
      await ApiFetch.fetch(dataControlEnum: dataControlEnum, firebaseID: hiveFirebaseID, createdAt: hiveTimestamp);
    }

    data.clear();

    for (List<dynamic> lista in boxData.values) {
      List<EstacaoModel> page = lista.map((e) => EstacaoModel.fromJson(jsonDecode(jsonEncode(e)))).toList();
      data.addAll(page);
    }

    notificationCompleter.complete();

    return pesquisa(_search);
  }

  List<EstacaoModel> pesquisa(String search) {
    _search = search;
    List<EstacaoModel> pesquisa = List.from(data.where((element) {
      bool nome = element.nome?.toLowerCase().contains(_search.toLowerCase()) ?? false;
      bool descricao = element.descricao?.toLowerCase().contains(_search.toLowerCase()) ?? false;

      if (nome || descricao) return true;
      return false;
    }));

    _isFetching = false;
    return pesquisa;
  }

  Future<void> create({required EstacaoModel registro}) async {
    await ApiRequest.execute(
      dataControlEnum: DataControlEnum.celulaCreate,
      registro: FirebaseRegistrosModel(
        newData: registro.toJson(),
        operation: DataControlEnum.celulaCreate.method,
      ),
    );
  }

  Future<void> remove({required EstacaoModel registro}) async {
    await ApiRequest.execute(
      dataControlEnum: DataControlEnum.celulaDelete,
      registro: FirebaseRegistrosModel(
        id: registro.id,
        newData: registro.toJson(),
        operation: DataControlEnum.celulaDelete.method,
      ),
    );
  }
}
