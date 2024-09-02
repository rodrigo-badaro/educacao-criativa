import 'package:educacao_criativa/models/estacao_item_model.dart';
import 'package:educacao_criativa/models/model_types.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'estacao_model.freezed.dart';
part 'estacao_model.g.dart';

@freezed
@immutable
class EstacaoModel with _$EstacaoModel {
  @HiveType(typeId: celulaModelType, adapterName: 'EstacaoModelAdapter')
  const factory EstacaoModel({
    @HiveField(0) final int? id,
    @HiveField(1) final String? nome,
    @HiveField(2) final String? descricao,
    @HiveField(3) @JsonKey(name: 'celula_item') final List<EstacaoModelItem>? items,
  }) = _EstacaoModel;

  factory EstacaoModel.fromJson(Map<String, Object?> json) => _$EstacaoModelFromJson(json);
}
