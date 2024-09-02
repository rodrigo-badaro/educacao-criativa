import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class DateTimeAdapter implements JsonConverter<DateTime?, dynamic> {
  const DateTimeAdapter();

  @override
  DateTime? fromJson(dynamic jsonAttribute) {
    try {
      final type = jsonAttribute.runtimeType.toString();
      if (type == 'String') {
        return DateTime.tryParse(jsonAttribute)?.toLocal();
      }
      if (type == 'int') {
        return DateTime.fromMicrosecondsSinceEpoch(jsonAttribute).toLocal();
      }
    } catch (e) {
      debugPrint('Error converting model DateTime => ${jsonAttribute.runtimeType}');
    }
    return null;
  }

  @override
  String? toJson(DateTime? object) => object?.toUtc().toIso8601String();
}
