import 'package:educacao_criativa/models/model_types.dart';
import 'package:educacao_criativa/models/unidade_model.dart';
import 'package:educacao_criativa/services/date_time_adapter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'aluno_info_model.freezed.dart';
part 'aluno_info_model.g.dart';

@freezed
class AlunoInfoModel with _$AlunoInfoModel {
  @HiveType(typeId: alunoInfoModelType, adapterName: 'AlunoInfoAdapter')
  const factory AlunoInfoModel({
    final int? id,
    final String? matricula,
    @DateTimeAdapter() @JsonKey(name: 'data_matricula') final DateTime? dataMatricula,
    final UnidadeModel? unidade,
  }) = _AlunoInfoModel;

  factory AlunoInfoModel.fromJson(Map<String, Object?> json) => _$AlunoInfoModelFromJson(json);
}
