import 'package:educacao_criativa/models/model_types.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'master_cliente_info_model.freezed.dart';
part 'master_cliente_info_model.g.dart';

@freezed
class MasterClienteInfoModel with _$MasterClienteInfoModel {
  @HiveType(typeId: masterClienteInfoModelType, adapterName: 'MasterClienteInfoAdapter')
  const factory MasterClienteInfoModel({
    final int? id,
  }) = _MasterClienteInfoModel;

  factory MasterClienteInfoModel.fromJson(Map<String, Object?> json) => _$MasterClienteInfoModelFromJson(json);
}
