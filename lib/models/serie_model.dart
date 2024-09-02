import 'package:educacao_criativa/models/modalidade_model.dart';
import 'package:educacao_criativa/models/model_types.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'serie_model.freezed.dart';
part 'serie_model.g.dart';

@freezed
@immutable
class SerieModel with _$SerieModel {
  @HiveType(typeId: serieModelType, adapterName: 'SerieModelAdapter')
  const factory SerieModel({
    @HiveField(0) final int? id,
    @HiveField(1) final String? nome,
    @HiveField(2) final int? numero,
    @HiveField(3) final ModalidadeModel? modalidade,
    @HiveField(4) @JsonKey(name: 'codigo_bncc') final String? codigoBNCC,
  }) = _SerieModel;

  factory SerieModel.fromJson(Map<String, Object?> json) => _$SerieModelFromJson(json);
}
