import 'package:educacao_criativa/models/model_types.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'tipo_de_unidade_model.freezed.dart';
part 'tipo_de_unidade_model.g.dart';

@freezed
class TipoDeUnidadeModel with _$TipoDeUnidadeModel {
  @HiveType(typeId: tipoDeUnidadeModelType, adapterName: 'TipoDeUnidadeModelAdapter')
  const factory TipoDeUnidadeModel({
    @HiveField(0) final int? id,
    @HiveField(1) final String? nome,
    @HiveField(2) final String? descricao,
  }) = _TipoDeUnidadeModel;

  factory TipoDeUnidadeModel.fromJson(Map<String, Object?> json) => _$TipoDeUnidadeModelFromJson(json);
}
