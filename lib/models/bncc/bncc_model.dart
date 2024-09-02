import 'package:educacao_criativa/models/model_types.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'bncc_model.freezed.dart';
part 'bncc_model.g.dart';

// final _bnccService = BnccService();

@freezed
@immutable
class BNCC with _$BNCC {
  factory BNCC.fromJson(Map<String, Object?> json) => _$BNCCFromJson(json);
  const BNCC._();
  @HiveType(typeId: bnccModelType, adapterName: 'BNCCAdapter')
  const factory BNCC({
    @HiveField(0) final String? codigo,
    @HiveField(1) final String? nome,
    @HiveField(2) final String? descricao,
    @HiveField(3) final String? sugestao,
  }) = _BNCC;

  // ModalidadeBNCC? get modalidade => _bnccService.formatModalidade(codigo);
  // List<SerieBNCC>? get series => _bnccService.formatSeries(codigo);
  // TemaBNCC? get tema => _bnccService.formatTema(codigo);
  // int? get numero => _bnccService.formatNumero(codigo);
}
