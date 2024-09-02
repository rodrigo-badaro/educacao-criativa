import 'package:educacao_criativa/models/model_types.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'telefone_model.freezed.dart';
part 'telefone_model.g.dart';

@freezed
@immutable
class TelefoneModel with _$TelefoneModel {
  @HiveType(typeId: telefoneModelType, adapterName: 'TelefoneModelAdapter')
  const factory TelefoneModel({
    @HiveField(0) final int? id,
    @HiveField(1) final String? numero,
  }) = _TelefoneModel;

  factory TelefoneModel.fromJson(Map<String, Object?> json) => _$TelefoneModelFromJson(json);
}
