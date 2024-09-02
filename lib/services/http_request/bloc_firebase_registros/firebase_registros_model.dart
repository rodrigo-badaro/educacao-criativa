import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:educacao_criativa/get.dart';

class FirebaseRegistrosModel {
  final bool completed;
  final Timestamp? createdAt;
  final int? id;
  final dynamic newData;
  final dynamic oldData;
  final String? operation;
  final String? user;

  FirebaseRegistrosModel({
    this.completed = false,
    Timestamp? createdAt,
    this.id,
    this.newData,
    this.oldData,
    this.operation,
    String? user,
  })  : createdAt = Timestamp.now(),
        user = user ?? authBloc.state.usuario?.id.toString();

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'completed': completed,
      'createdAt': createdAt?.toDate(),
      'id': id,
      'newData': newData,
      'oldData': oldData,
      'operation': operation,
      'user': user,
    };
  }

  factory FirebaseRegistrosModel.fromMap(Map<String, dynamic> map) {
    return FirebaseRegistrosModel(
      completed: map['completed'] as bool,
      createdAt: map['createdAt'],
      id: map['id'].runtimeType != int ? int.tryParse(map['id']) : map['id'],
      newData: map['newData'] as dynamic,
      oldData: map['oldData'] as dynamic,
      operation: map['operation'] as String,
      user: map['user'],
    );
  }

  String toJson() => json.encode(toMap());

  factory FirebaseRegistrosModel.fromJson(String source) => FirebaseRegistrosModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
