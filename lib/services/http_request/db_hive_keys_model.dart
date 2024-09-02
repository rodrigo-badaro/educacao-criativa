// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:educacao_criativa/models/model_types.dart';
import 'package:hive/hive.dart';

@HiveType(typeId: dbHiveKeysTypeId)
class DBHiveKeysModel extends HiveObject {
  String firebaseID;
  String createdAt;

  DBHiveKeysModel({
    required this.firebaseID,
    required this.createdAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firebaseID': firebaseID,
      'createdAt': createdAt,
    };
  }

  factory DBHiveKeysModel.fromMap(Map<String, dynamic>? map) {
    return DBHiveKeysModel(
      firebaseID: map?['firebaseID'] ?? 'init',
      createdAt: map?['createdAt'] ?? Timestamp.now().toDate().toIso8601String(),
    );
  }
}
