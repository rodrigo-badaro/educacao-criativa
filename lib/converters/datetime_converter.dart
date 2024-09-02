import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

class DateTimeConverter implements JsonConverter<DateTime?, dynamic> {
  const DateTimeConverter();

  @override
  DateTime? fromJson(dynamic jsonAttribute) {
    try {
      return DateTime.tryParse(jsonAttribute)?.toLocal();
    } catch (e) {
      debugPrint('Error converting ${jsonAttribute.runtimeType} to '
          'DateTime, value => $json');
    }
    return null;
  }

  @override
  String? toJson(DateTime? object) => object?.toIso8601String();
}
