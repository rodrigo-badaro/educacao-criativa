import 'package:educacao_criativa/models/model_types.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'endereco_model.freezed.dart';
part 'endereco_model.g.dart';

@freezed
@immutable
class EnderecoModel with _$EnderecoModel {
  const EnderecoModel._();

  @HiveType(typeId: enderecoModelType, adapterName: 'EnderecoAdapter')
  const factory EnderecoModel({
    @HiveField(0) final int? id,
    @HiveField(1) final String? cep,
    @HiveField(2) final String? rua,
    @HiveField(3) final String? numero,
    @HiveField(4) final String? complemento,
    @HiveField(5) final String? uf,
    @HiveField(6) final String? municipio,
    @HiveField(7) final String? bairro,
  }) = _EnderecoModel;

  factory EnderecoModel.fromJson(Map<String, Object?> json) => _$EnderecoModelFromJson(json);

  String get endereco {
    String endereco = '';
    if (rua?.isNotEmpty ?? false) endereco += '$rua, ';
    if (numero?.isNotEmpty ?? false) endereco += '$numero, ';
    if (complemento?.isNotEmpty ?? false) endereco += '$complemento, ';
    if (bairro?.isNotEmpty ?? false) endereco += '$bairro - ';
    if (municipio?.isNotEmpty ?? false) endereco += '$municipio - ';
    if (cep?.isNotEmpty ?? false) endereco += 'CEP: $cep, ';

    return endereco;
  }
}
