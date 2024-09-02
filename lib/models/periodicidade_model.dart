import 'package:educacao_criativa/models/model_types.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'periodicidade_model.freezed.dart';
part 'periodicidade_model.g.dart';

@freezed
@immutable
class PeriodicidadeModel with _$PeriodicidadeModel {
  @HiveType(typeId: periodicidadeModelType, adapterName: 'PeriodicidadeAdapter')
  const factory PeriodicidadeModel({
    @HiveField(0) final int? id,
    @HiveField(1) final String? nome,
    @HiveField(2) final String? descricao,
  }) = _PeriodicidadeModel;

  factory PeriodicidadeModel.fromJson(Map<String, Object?> json) =>
      _$PeriodicidadeModelFromJson(json);
}
