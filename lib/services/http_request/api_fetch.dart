import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:educacao_criativa/services/http_request/api_request.dart';
import 'package:educacao_criativa/services/http_request/bloc_firebase_registros/firebase_registros_model.dart';
import 'package:educacao_criativa/services/http_request/data_control_enum.dart';
import 'package:educacao_criativa/services/http_request/db_hive.dart';
import 'package:flutter/material.dart';

class ApiFetch {
  const ApiFetch._();

  static Future<dynamic> fetch({
    required DataControlEnum dataControlEnum,
    required String firebaseID,
    required Timestamp createdAt,
    int? pagina,
  }) async {
    try {
      dynamic response = await ApiRequest.execute(
        dataControlEnum: dataControlEnum,
        registro: FirebaseRegistrosModel(id: pagina ?? 1),
      );

      await DBHive.update(
        dataControlEnum: dataControlEnum,
        registro: {0: response},
        firebaseID: firebaseID,
        createdAt: createdAt,
      );

      return response;
    } catch (e) {
      debugPrint('Ocorreu um erro ao requisitar => $e');
    }
    return null;
  }
}
