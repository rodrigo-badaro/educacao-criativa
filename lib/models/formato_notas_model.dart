import 'package:educacao_criativa/models/model_types.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'formato_notas_model.freezed.dart';
part 'formato_notas_model.g.dart';

@freezed
@immutable
class FormatoNotasModel with _$FormatoNotasModel {
  @HiveType(typeId: formatoNotaModelType, adapterName: 'FormatoNotaModelAdapter')
  const factory FormatoNotasModel({
    @HiveField(0) final int? id,
    @HiveField(1) final String? nome,
    @HiveField(2) final String? descricao,
  }) = _FormatoNotasModel;

  factory FormatoNotasModel.fromJson(Map<String, Object?> json) => _$FormatoNotasModelFromJson(json);
}
