import 'package:educacao_criativa/models/model_types.dart';
import 'package:educacao_criativa/models/unidade_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'professor_info_model.freezed.dart';
part 'professor_info_model.g.dart';

@freezed
class ProfessorInfoModel with _$ProfessorInfoModel {
  @HiveType(typeId: professorInfoModelType, adapterName: 'ProfessorInfoAdapter')
  const factory ProfessorInfoModel({
    final List<UnidadeModel>? unidades,
    final String? matricula,
  }) = _ProfessorInfoModel;

  factory ProfessorInfoModel.fromJson(Map<String, Object?> json) => _$ProfessorInfoModelFromJson(json);
}
