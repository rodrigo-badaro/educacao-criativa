import 'package:educacao_criativa/models/model_types.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'deficiencia_model.freezed.dart';
part 'deficiencia_model.g.dart';

@freezed
@immutable
class DeficienciaModel with _$DeficienciaModel {
  @HiveType(typeId: deficienciaModelType, adapterName: 'DeficienciaModelAdapter')
  const factory DeficienciaModel({
    @HiveField(0) final int? id,
    @HiveField(1) final String? tipo,
    @HiveField(2) final String? descricao,
  }) = _DeficienciaModel;

  factory DeficienciaModel.fromJson(Map<String, Object?> json) => _$DeficienciaModelFromJson(json);
}
