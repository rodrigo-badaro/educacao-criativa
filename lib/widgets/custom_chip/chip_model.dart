import 'dart:convert';

import 'package:educacao_criativa/hive_model_type_id.dart';
import 'package:hive/hive.dart';


@HiveType(typeId: chipTypeId)
class ChipModel extends HiveObject {
  @HiveField(0) final String title;
  @HiveField(1) final String type;
  ChipModel({
    required this.title,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'type': type,
    };
  }

  factory ChipModel.fromMap(Map<String, dynamic> map) {
    return ChipModel(
      title: map['title'] as String,
      type: map['type'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ChipModel.fromJson(String source) => ChipModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
