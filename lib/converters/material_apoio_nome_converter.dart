import 'dart:convert';
import 'package:educacao_criativa/models/material_apoio_nome/material_apoio_nome_model.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class MaterialApoioNomeConverter implements JsonConverter<MaterialApoioNome?, dynamic> {
  const MaterialApoioNomeConverter();

  @override
  MaterialApoioNome? fromJson(dynamic jsonAttribute) {
    try {
      switch (jsonAttribute) {
        case 'professor':
          return MaterialApoioNome.professor;
        case 'diretor':
          return MaterialApoioNome.diretor;
        default:
          return null;
      }
    } catch (e) {
      debugPrint('Error converting ${jsonAttribute.runtimeType} to '
          'MaterialApoioNome enum, value => $json');
    }
    return null;
  }

  @override
  String? toJson(MaterialApoioNome? object) => object?.value;
}
