import 'package:educacao_criativa/models/model_types.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'pedagoga_fagundez_info_model.freezed.dart';
part 'pedagoga_fagundez_info_model.g.dart';

@freezed
class PedagogaFagundezInfoModel with _$PedagogaFagundezInfoModel {
  @HiveType(
    typeId: pedagogaFagundezInfoModelType,
    adapterName: 'PedagogaFagundezInfoAdapter',
  )
  const factory PedagogaFagundezInfoModel({
    final int? id,
  }) = _PedagogaFagundezInfoModel;

  factory PedagogaFagundezInfoModel.fromJson(Map<String, Object?> json) => _$PedagogaFagundezInfoModelFromJson(json);
}
