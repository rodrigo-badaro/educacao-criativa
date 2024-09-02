import 'package:educacao_criativa/models/estacao_model.dart';
import 'package:educacao_criativa/models/model_types.dart';
import 'package:educacao_criativa/models/unidade_model.dart';
import 'package:educacao_criativa/models/usuario_model.dart';
import 'package:educacao_criativa/services/date_time_adapter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'espaco_model.freezed.dart';
part 'espaco_model.g.dart';

@freezed
@immutable
class EspacoModel with _$EspacoModel {
  @HiveType(typeId: espacoModelType, adapterName: 'EspacoModelAdapter')
  const factory EspacoModel({
    @HiveField(0) final int? id,
    @HiveField(1) final String? nome,
    @HiveField(2) final bool? restrito,
    @HiveField(3) final UnidadeModel? unidade,
    @HiveField(4) final UsuarioModel? usuario,
    @HiveField(5) final List<EstacaoModel>? celulas,
    @JsonKey(name: 'unidades_externas') @HiveField(6) final List<UnidadeModel>? unidadesExternas,
    @DateTimeAdapter() @HiveField(7) @JsonKey(name: 'created_at') final DateTime? createdAt,
    @DateTimeAdapter() @HiveField(8) @JsonKey(name: 'updated_at') final DateTime? updatedAt,
  }) = _EspacoModel;

  factory EspacoModel.fromJson(Map<String, Object?> json) => _$EspacoModelFromJson(json);
}
