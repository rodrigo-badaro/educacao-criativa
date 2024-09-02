import 'dart:async';
import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:educacao_criativa/get.dart';
import 'package:educacao_criativa/models/estacao_item_model.dart';
import 'package:educacao_criativa/models/estacao_model.dart';
import 'package:educacao_criativa/screens/estacoes/bloc/estacoes_event.dart';
import 'package:educacao_criativa/services/http_request/api_request.dart';
import 'package:educacao_criativa/services/http_request/bloc_firebase_registros/firebase_registros_model.dart';
import 'package:educacao_criativa/services/http_request/data_control_enum.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class EstacaoDetalhesRepository {
  List<String> arquivosEnviados = [];

  EstacaoModel? estacao;
  List<EstacaoModelItem>? items;

  String _search = '';

  Future<EstacaoModel?> updateDetalhes({
    required EstacaoModel newData,
    required int id,
  }) async {
    try {
      estacao = await ApiRequest.execute(
        dataControlEnum: DataControlEnum.celulaUpdate,
        registro: FirebaseRegistrosModel(
          id: id,
          newData: newData.toJson(),
          operation: DataControlEnum.celulaUpdate.method,
        ),
      );

      //TODO - TEMPORARIO
      estacoesBloc.add(LoadEstacoesEvent(forceReload: true));
    } catch (e) {
      debugPrint('Ocorreu um erro ao tentar editar este veículo => $e');
    }

    return estacao;
  }

  Future<void> delete({
    required int id,
  }) async {
    try {
      await ApiRequest.execute(
        dataControlEnum: DataControlEnum.celulaDelete,
        registro: FirebaseRegistrosModel(
          id: id,
          operation: DataControlEnum.celulaDelete.method,
        ),
      );

      //TODO - TEMPORARIO
      estacoesBloc.add(LoadEstacoesEvent(forceReload: true));
    } catch (e) {
      debugPrint('Ocorreu um erro ao tentar editar este veículo => $e');
    }
  }

  Future<EstacaoModel?> fetchDetalhes({required int id}) async {
    var boxData = await Hive.openBox(DataControlEnum.celulaFetchID.firebaseCollection);

    for (List<dynamic> lista in boxData.values) {
      List<EstacaoModel> page = lista.map((e) => EstacaoModel.fromJson(jsonDecode(jsonEncode(e)))).toList();
      if (page.any((e) => e.id == id)) {
        estacao = page.firstWhereOrNull((e) => e.id == id);
        break;
      }
    }

    estacao ??= await ApiRequest.execute(
      dataControlEnum: DataControlEnum.celulaFetchID,
      registro: FirebaseRegistrosModel(
        id: id,
        newData: null,
        oldData: null,
        operation: DataControlEnum.celulaFetchID.method,
      ),
    );

    return pesquisa(_search);
  }

  EstacaoModel? pesquisa(String search) {
    _search = search;

    items = items?.where((e) => e.item?.nome?.toLowerCase().contains(_search.toLowerCase()) ?? false).toList();

    return estacao;
  }
}
