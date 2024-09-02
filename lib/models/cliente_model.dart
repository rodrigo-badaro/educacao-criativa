import 'package:educacao_criativa/models/model_types.dart';
import 'package:educacao_criativa/models/telefone_model.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'cliente_model.freezed.dart';
part 'cliente_model.g.dart';

@freezed
class ClienteModel with _$ClienteModel {
  @HiveType(typeId: clienteModelType, adapterName: 'ClienteAdapter')
  const factory ClienteModel({
    @HiveField(0) final int? id,
    @HiveField(1) final String? nome,
    @HiveField(2) final String? descricao,
    @HiveField(3) final String? sigla,
    @HiveField(4) @JsonKey(name: 'nome_responsavel') final String? nomeResponsavel,
    @HiveField(5) final String? cpf,
    @HiveField(6) final String? email,
    @HiveField(7) final TelefoneModel? telefone,
  }) = _ClienteModel;

  factory ClienteModel.fromJson(Map<String, Object?> json) => _$ClienteModelFromJson(json);
}
