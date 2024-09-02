import 'dart:async';
import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:educacao_criativa/get.dart';
import 'package:educacao_criativa/models/material_apoio/material_apoio_model.dart';
import 'package:educacao_criativa/services/http_request/api_fetch.dart';
import 'package:educacao_criativa/services/http_request/data_control_enum.dart';
import 'package:educacao_criativa/services/http_request/db_hive_keys_model.dart';
import 'package:educacao_criativa/services/notification/bloc/notification_event.dart';
import 'package:hive/hive.dart';

class MateriaisDeApoioRepository {
  final _dataControlEnum = DataControlEnum.materiaisDeApoioFetch;
  DataControlEnum get dataControlEnum => _dataControlEnum;

  final List<MaterialApoioModel> _data = [];
  List<MaterialApoioModel> get data => _data;

  String _search = '';
  String get search => _search;

  final bool _asc = true;
  bool get asc => _asc;

  final String _order = '';
  String get order => _order;

  bool _isFetching = false;
  bool get isFetching => _isFetching;

  Future<List<MaterialApoioModel>> fetch({bool forceReload = false}) async {
    _isFetching = true;
    Completer notificationCompleter = Completer();

    notificationBloc.add(
      LoadingNotificationEvent(message: 'Obtendo formato de notas', completer: notificationCompleter),
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
      List<MaterialApoioModel> page = lista.map((e) => MaterialApoioModel.fromJson(jsonDecode(jsonEncode(e)))).toList();
      data.addAll(page);
    }

    notificationCompleter.complete();

    return pesquisa(_search);
  }

  List<MaterialApoioModel> pesquisa(String search) {
    _search = search;
    List<MaterialApoioModel> pesquisa = List.from(data.where((element) {
      bool nome = element.nome?.label.toLowerCase().contains(_search.toLowerCase()) ?? false;

      if (nome) return true;
      return false;
    }));

    _isFetching = false;
    return pesquisa;
  }
}
