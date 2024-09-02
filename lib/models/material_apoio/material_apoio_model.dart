import 'package:educacao_criativa/converters/material_apoio_nome_converter.dart';
import 'package:educacao_criativa/models/material_apoio_nome/material_apoio_nome_model.dart';
import 'package:educacao_criativa/models/model_types.dart';
import 'package:educacao_criativa/services/date_time_adapter.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'material_apoio_model.freezed.dart';
part 'material_apoio_model.g.dart';

@freezed
@immutable
class MaterialApoioModel with _$MaterialApoioModel {
  @HiveType(typeId: materialApoioModelType, adapterName: 'MaterialApoioAdapter')
  const factory MaterialApoioModel({
    @HiveField(0) final int? id,
    @HiveField(1) @MaterialApoioNomeConverter() final MaterialApoioNome? nome,
    @HiveField(2) final String? url,
    @DateTimeAdapter() @HiveField(3) @JsonKey(name: 'created_at') final DateTime? createdAt,
    @DateTimeAdapter() @HiveField(4) @JsonKey(name: 'updated_at') final DateTime? updatedAt,
  }) = _MaterialApoio;

  factory MaterialApoioModel.fromJson(Map<String, Object?> json) => _$MaterialApoioModelFromJson(json);
}
