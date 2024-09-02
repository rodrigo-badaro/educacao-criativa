import 'package:educacao_criativa/models/item_model.dart';
import 'package:educacao_criativa/models/model_types.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'estacao_item_model.freezed.dart';
part 'estacao_item_model.g.dart';

@freezed
class EstacaoModelItem with _$EstacaoModelItem {
  @HiveType(typeId: celulaItemModelType, adapterName: 'EstacaoItemModelAdapter')
  const factory EstacaoModelItem({
    @HiveField(1) final ItemModel? item,
    @HiveField(2) int? quantidade,
    @HiveField(3) @JsonKey(name: 'quantidade_aviso') int? quantidadeAviso,
    @HiveField(4) @JsonKey(name: 'quantidade_minima') int? quantidadeMinima,
  }) = _EstacaoModelItem;

  factory EstacaoModelItem.fromJson(Map<String, Object?> json) => _$EstacaoModelItemFromJson(json);
}
