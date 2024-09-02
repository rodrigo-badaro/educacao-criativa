import 'dart:async';
import 'dart:convert';

import 'package:educacao_criativa/models/tokens_model.dart';
import 'package:educacao_criativa/models/usuario_model.dart';
import 'package:educacao_criativa/services/http_request/api_request.dart';
import 'package:educacao_criativa/services/http_request/bloc_firebase_registros/firebase_registros_model.dart';
import 'package:educacao_criativa/services/http_request/data_control_enum.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class AuthRepository {
  UsuarioModel? usuario;
  TokensModel? tokens;
  Box? auth;

  Future<void> openBox() async {
    if (Hive.isBoxOpen('AUTHENTICATION')) {
      auth = Hive.box('AUTHENTICATION');
    } else {
      auth = await Hive.openBox('AUTHENTICATION');
    }

    try {
      var auxTokens = auth?.get('tokens');
      if (auxTokens != null) tokens = TokensModel.fromJson(Map<String, dynamic>.from(jsonDecode(jsonEncode(auxTokens))));
    } catch (e) {
      debugPrint('Erro ao obter os dados de autenticação dos tokens no hive => ${e.toString()}');
    }

    try {
      var auxUsuario = auth?.get('usuario');
      if (auxUsuario != null) usuario = UsuarioModel.fromJson(Map<String, dynamic>.from(jsonDecode(jsonEncode(auxUsuario))));
    } catch (e) {
      debugPrint('Erro ao obter os dados de autenticação do usuário no hive => ${e.toString()}');
    }
  }

  Future<TokensModel?> getTokens({required String email, required String password, required bool keepLogged}) async {
    await openBox();
    tokens = await ApiRequest.execute(
      dataControlEnum: DataControlEnum.authenticationLogin,
      registro: FirebaseRegistrosModel(
        id: null,
        oldData: null,
        newData: {
          "username": email,
          "password": password,
        },
        operation: DataControlEnum.authenticationLogin.method,
      ),
    );

    if (tokens != null) await saveTokens();
    return tokens;
  }

  Future<UsuarioModel?> authCheck() async {
    await openBox();

    if (usuario == null) {
      usuario = await ApiRequest.execute(
        dataControlEnum: DataControlEnum.authenticationGetUser,
        registro: FirebaseRegistrosModel(
          operation: DataControlEnum.authenticationGetUser.method,
        ),
      );

      await saveUser();
    }

    return usuario;
  }

  Future<void> saveTokens() async {
    try {
      if (tokens != null) await auth?.put('tokens', tokens?.toJson());
    } catch (e) {
      debugPrint('Erro ao salvar dados do usuário no hive => $e');
    }
  }

  Future<void> saveUser() async {
    try {
      if (usuario != null) await auth?.put('usuario', usuario?.toJson());
    } catch (e) {
      debugPrint('Erro ao salvar dados do usuário no hive => $e');
    }
  }

  Future<void> logOut() async {
    await auth?.clear();
  }
}
