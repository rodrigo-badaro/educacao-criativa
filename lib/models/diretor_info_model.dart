import 'package:educacao_criativa/models/model_types.dart';
import 'package:educacao_criativa/models/unidade_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'diretor_info_model.freezed.dart';
part 'diretor_info_model.g.dart';

@freezed
class DiretorInfoModel with _$DiretorInfoModel {
  @HiveType(typeId: diretorInfoModelType, adapterName: 'DiretorInfoAdapter')
  const factory DiretorInfoModel({
    @HiveField(0) final int? id,
    @HiveField(1) final List<UnidadeModel>? unidades,
  }) = _DiretorInfoModel;

  factory DiretorInfoModel.fromJson(Map<String, Object?> json) => _$DiretorInfoModelFromJson(json);
}
