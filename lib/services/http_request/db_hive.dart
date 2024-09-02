import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:educacao_criativa/get.dart';
import 'package:educacao_criativa/services/http_request/data_control_enum.dart';
import 'package:educacao_criativa/services/http_request/db_hive_keys_model.dart';
import 'package:educacao_criativa/services/notification/bloc/notification_event.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class DBHive {
  const DBHive._();

  static Future<void> update({
    required DataControlEnum dataControlEnum,
    required Map<int, List<dynamic>> registro,
    required String firebaseID,
    required Timestamp createdAt,
  }) async {
    try {
      Box boxKeys;
      Box boxData;

      if (Hive.isBoxOpen('KEYS')) {
        boxKeys = Hive.box('KEYS');
      } else {
        await Hive.openBox('KEYS');
        boxKeys = Hive.box('KEYS');
      }

      if (Hive.isBoxOpen(dataControlEnum.firebaseCollection)) {
        boxData = Hive.box(dataControlEnum.firebaseCollection);
      } else {
        await Hive.openBox(dataControlEnum.firebaseCollection);
        boxData = Hive.box(dataControlEnum.firebaseCollection);
      }

      await boxKeys.put(dataControlEnum.firebaseCollection, DBHiveKeysModel(firebaseID: firebaseID, createdAt: createdAt.toDate().toIso8601String()));

      await boxData.put(registro.keys.first, registro.values.first);
    } catch (e) {
      notificationBloc.add(
        InfoNotificationEvent(message: 'Erro ao salvar dados no HIVE => $e', icon: Icons.dangerous),
      );
      debugPrint(e.toString());
    }
  }
}
