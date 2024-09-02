import 'dart:convert';

import 'package:educacao_criativa/models/sexo_model.dart';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class SexoConverter implements JsonConverter<SexoModel?, dynamic> {
  const SexoConverter();

  @override
  SexoModel? fromJson(dynamic jsonAttribute) {
    try {
      switch (jsonAttribute) {
        case 'homem':
          return SexoModel.masculino;
        case 'mulher':
          return SexoModel.feminino;
        default:
          return null;
      }
    } catch (e) {
      debugPrint('Error converting ${jsonAttribute.runtimeType} to '
          'Sexo enum, value => $json');
    }
    return null;
  }

  @override
  String? toJson(SexoModel? object) => object?.value;
}
