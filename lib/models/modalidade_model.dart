import 'package:educacao_criativa/models/model_types.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'modalidade_model.freezed.dart';
part 'modalidade_model.g.dart';

@freezed
@immutable
class ModalidadeModel with _$ModalidadeModel {
  @HiveType(typeId: modalidadeModelType, adapterName: 'ModalidadeModelAdapter')
  const factory ModalidadeModel({
    @HiveField(0) final int? id,
    @HiveField(1) final String? nome,
    @HiveField(2) final String? descricao,
    @HiveField(3) final String? sigla,
    @HiveField(4) @JsonKey(name: 'codigo_bncc') final String? codigoBNCC,
  }) = _ModalidadeModel;

  factory ModalidadeModel.fromJson(Map<String, Object?> json) =>
      _$ModalidadeModelFromJson(json);
}
