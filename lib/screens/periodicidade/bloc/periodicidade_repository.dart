import 'dart:async';
import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:educacao_criativa/get.dart';
import 'package:educacao_criativa/models/periodicidade_model.dart';
import 'package:educacao_criativa/services/http_request/api_fetch.dart';
import 'package:educacao_criativa/services/http_request/api_request.dart';
import 'package:educacao_criativa/services/http_request/bloc_firebase_registros/firebase_registros_model.dart';
import 'package:educacao_criativa/services/http_request/data_control_enum.dart';
import 'package:educacao_criativa/services/http_request/db_hive_keys_model.dart';
import 'package:educacao_criativa/services/notification/bloc/notification_event.dart';
import 'package:hive/hive.dart';

class PeriodicidadeRepository {
  final _dataControlEnum = DataControlEnum.periodicidadeFetch;
  DataControlEnum get dataControlEnum => _dataControlEnum;

  final List<PeriodicidadeModel> _data = [];
  List<PeriodicidadeModel> get data => _data;

  String _search = '';
  String get search => _search;

  final bool _asc = true;
  bool get asc => _asc;

  final String _order = '';
  String get order => _order;

  bool _isFetching = false;
  bool get isFetching => _isFetching;

  Future<List<PeriodicidadeModel>> fetch({bool forceReload = false}) async {
    _isFetching = true;
    Completer notificationCompleter = Completer();

    notificationBloc.add(
      LoadingNotificationEvent(message: 'Obtendo periodicidades', completer: notificationCompleter),
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
      List<PeriodicidadeModel> page = lista.map((e) => PeriodicidadeModel.fromJson(jsonDecode(jsonEncode(e)))).toList();
      data.addAll(page);
    }

    notificationCompleter.complete();

    return pesquisa(_search);
  }

  List<PeriodicidadeModel> pesquisa(String search) {
    _search = search;
    List<PeriodicidadeModel> pesquisa = List.from(data.where((element) {
      bool nome = element.nome?.toLowerCase().contains(_search.toLowerCase()) ?? false;
      bool descricao = element.descricao?.toLowerCase().contains(_search.toLowerCase()) ?? false;

      if (nome || descricao) return true;
      return false;
    }));

    _isFetching = false;
    return pesquisa;
  }

  Future<void> create({required PeriodicidadeModel registro}) async {
    await ApiRequest.execute(
      dataControlEnum: DataControlEnum.periodicidadeCreate,
      registro: FirebaseRegistrosModel(
        newData: registro.toJson(),
        operation: DataControlEnum.periodicidadeCreate.method,
      ),
    );
  }

  Future<void> update({required PeriodicidadeModel registro}) async {
    await ApiRequest.execute(
      dataControlEnum: DataControlEnum.periodicidadeUpdate,
      registro: FirebaseRegistrosModel(
        newData: registro.toJson(),
        operation: DataControlEnum.periodicidadeUpdate.method,
      ),
    );
  }

  Future<void> remove({required PeriodicidadeModel registro}) async {
    await ApiRequest.execute(
      dataControlEnum: DataControlEnum.periodicidadeDelete,
      registro: FirebaseRegistrosModel(
        id: registro.id,
        newData: registro.toJson(),
        operation: DataControlEnum.periodicidadeDelete.method,
      ),
    );
  }
}
