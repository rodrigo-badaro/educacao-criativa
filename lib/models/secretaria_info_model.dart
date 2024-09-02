import 'package:educacao_criativa/models/model_types.dart';
import 'package:educacao_criativa/models/unidade_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'secretaria_info_model.freezed.dart';
part 'secretaria_info_model.g.dart';

@freezed
class SecretariaInfoModel with _$SecretariaInfoModel {
  @HiveType(typeId: secretariaInfoModelType, adapterName: 'SecretariaInfoAdapter')
  const factory SecretariaInfoModel({
    final int? id,
    final UnidadeModel? unidade,
  }) = _SecretariaInfoModel;

  factory SecretariaInfoModel.fromJson(Map<String, Object?> json) => _$SecretariaInfoModelFromJson(json);
}
