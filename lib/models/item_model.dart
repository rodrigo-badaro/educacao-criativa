import 'package:educacao_criativa/models/model_types.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'item_model.freezed.dart';
part 'item_model.g.dart';

@freezed
@immutable
class ItemModel with _$ItemModel {
  @HiveType(typeId: itemModelType, adapterName: 'ItemModelAdapter')
  const factory ItemModel({
    @HiveField(0) final int? id,
    @HiveField(1) final String? nome,
    @HiveField(2) final String? descricao,
    @JsonKey(name: 'is_consumivel') @HiveField(4) final bool? isConsumivel,
  }) = _ItemModel;

  factory ItemModel.fromJson(Map<String, Object?> json) => _$ItemModelFromJson(json);
}
