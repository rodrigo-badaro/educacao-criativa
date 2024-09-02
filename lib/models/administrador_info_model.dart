import 'package:educacao_criativa/models/cliente_model.dart';
import 'package:educacao_criativa/models/model_types.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'administrador_info_model.freezed.dart';
part 'administrador_info_model.g.dart';

@freezed
class AdministradorInfoModel with _$AdministradorInfoModel {
  @HiveType(typeId: administradorInfoModelType, adapterName: 'AdministradorInfoAdapter')
  const factory AdministradorInfoModel({
    final int? id,
    final List<ClienteModel>? clientes,
  }) = _AdministradorInfoModel;

  factory AdministradorInfoModel.fromJson(Map<String, Object?> json) => _$AdministradorInfoModelFromJson(json);

}
