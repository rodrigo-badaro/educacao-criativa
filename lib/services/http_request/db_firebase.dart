import 'dart:async';

import 'package:educacao_criativa/get.dart';
import 'package:educacao_criativa/services/http_request/bloc_firebase_registros/firebase_registros_model.dart';
import 'package:educacao_criativa/services/http_request/data_control_enum.dart';
import 'package:educacao_criativa/services/notification/bloc/notification_event.dart';
import 'package:flutter/material.dart';

class DBFirebase {
  const DBFirebase._();

  static Future<String> createID({
    required DataControlEnum dataControlEnum,
    required FirebaseRegistrosModel? registro,
  }) async {
    try {
      // final FirebaseFirestore firestore = FirebaseFirestore.instance;

      // DocumentReference docRef = await firestore.collection(authBloc.state.usuario?.usuarioEmpresa.firstWhere((e) => e.principal).empresa.toString() ?? '0'.toString()).doc('atualizacoes').collection(dataControlEnum.firebaseCollection).add(registro?.toMap() ?? FirebaseRegistrosModel(operation: 'INIT').toMap());
      // return docRef.id;
      return 'id-provisorio';
    } catch (e) {
      notificationBloc.add(
        InfoNotificationEvent(message: 'Erro ao salvar dados no HIVE => $e', icon: Icons.dangerous),
      );
      throw (e.toString());
    }
  }
}
