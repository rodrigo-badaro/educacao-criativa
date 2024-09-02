import 'package:collection/collection.dart';
import 'package:educacao_criativa/get.dart';
import 'package:educacao_criativa/models/cliente_model.dart';
import 'package:educacao_criativa/models/endereco_model.dart';
import 'package:educacao_criativa/models/model_types.dart';
import 'package:educacao_criativa/models/tipo_de_unidade_model.dart';
import 'package:educacao_criativa/models/usuario_model.dart';
import 'package:educacao_criativa/services/date_time_adapter.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'unidade_model.freezed.dart';
part 'unidade_model.g.dart';

@freezed
class UnidadeModel with _$UnidadeModel {
  const UnidadeModel._();

  @HiveType(typeId: unidadeModelType, adapterName: 'UnidadeAdapter')
  const factory UnidadeModel({
    @HiveField(0) final int? id,
    @HiveField(1) final String? nome,
    @HiveField(2) @JsonKey(name: 'data_inauguracao') @DateTimeAdapter() final DateTime? dataInauguracao,
    @HiveField(3) final ClienteModel? cliente,
    @HiveField(4) @JsonKey(name: 'vice_diretor') final String? viceDiretor,
    @HiveField(5) final EnderecoModel? endereco,
    @HiveField(6) @JsonKey(name: 'tipo_unidade') final TipoDeUnidadeModel? tipoDeUnidade,
    @HiveField(7) @JsonKey(name: 'usuario_diretor') final UsuarioModel? diretor,
  }) = _UnidadeModel;

  factory UnidadeModel.fromJson(Map<String, Object?> json) => _$UnidadeModelFromJson(json);

  UsuarioModel? get getDiretor => usuariosBloc.state.usuarios.firstWhereOrNull((e) {
        return e.diretor?.unidades?.any((unidade) => unidade.id == id) ?? false;
      });
}
