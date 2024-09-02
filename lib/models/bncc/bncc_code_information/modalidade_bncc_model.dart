import 'package:educacao_criativa/models/model_types.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'modalidade_bncc_model.g.dart';

@HiveType(typeId: modalidadeBnccModelType)
enum ModalidadeBNCC {
  @HiveField(0)
  educacaoInfantil(code: 'EI', label: 'Educação Infantil'),
  @HiveField(1)
  ensinoFundamental(code: 'EF', label: 'Ensino Fundamental'),
  @HiveField(2)
  ensinoMedio(code: 'EM', label: 'Ensino Médio');

  const ModalidadeBNCC({
    required this.code,
    required this.label,
  });

  final String code;
  final String label;
}
