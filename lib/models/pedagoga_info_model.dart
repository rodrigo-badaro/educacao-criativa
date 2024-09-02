import 'package:educacao_criativa/models/model_types.dart';
import 'package:educacao_criativa/models/unidade_model.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'pedagoga_info_model.freezed.dart';
part 'pedagoga_info_model.g.dart';

@freezed
class PedagogaInfoModel with _$PedagogaInfoModel {
  @HiveType(typeId: pedagogaInfoModelType, adapterName: 'PedagogaInfoAdapter')
  const factory PedagogaInfoModel({
    final int? id,
    final List<UnidadeModel>? unidades,
  }) = _PedagogaInfoModel;

  factory PedagogaInfoModel.fromJson(Map<String, Object?> json) => _$PedagogaInfoModelFromJson(json);
}
