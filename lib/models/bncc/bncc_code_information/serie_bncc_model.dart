import 'package:educacao_criativa/models/bncc/bncc_code_information/modalidade_bncc_model.dart';
import 'package:educacao_criativa/models/model_types.dart';

import 'package:hive_flutter/hive_flutter.dart';

part 'serie_bncc_model.g.dart';

@HiveType(typeId: serieBnccModelType)
enum SerieBNCC {
  @HiveField(0)
  i1(
    code: 1,
    label: 'Bebês (zero a 1 ano e 6 meses)',
    modalidade: ModalidadeBNCC.educacaoInfantil,
  ),
  @HiveField(1)
  i2(
    code: 2,
    label: 'Crianças bem pequenas (1 ano e 7 meses a 3 anos e 11 meses)',
    modalidade: ModalidadeBNCC.educacaoInfantil,
  ),
  @HiveField(2)
  i3(
    code: 3,
    label: 'Crianças pequenas (4 anos a 5 anos e 11 meses)',
    modalidade: ModalidadeBNCC.educacaoInfantil,
  ),
  @HiveField(3)
  f1(
    code: 1,
    label: '1° Ano',
    modalidade: ModalidadeBNCC.ensinoFundamental,
  ),
  @HiveField(4)
  f2(
    code: 2,
    label: '2° Ano',
    modalidade: ModalidadeBNCC.ensinoFundamental,
  ),
  @HiveField(5)
  f3(
    code: 3,
    label: '3° Ano',
    modalidade: ModalidadeBNCC.ensinoFundamental,
  ),
  @HiveField(6)
  f4(
    code: 4,
    label: '4° Ano',
    modalidade: ModalidadeBNCC.ensinoFundamental,
  ),
  @HiveField(7)
  f5(
    code: 5,
    label: '5° Ano',
    modalidade: ModalidadeBNCC.ensinoFundamental,
  ),
  @HiveField(8)
  f6(
    code: 6,
    label: '6° Ano',
    modalidade: ModalidadeBNCC.ensinoFundamental,
  ),
  @HiveField(9)
  f7(
    code: 7,
    label: '7° Ano',
    modalidade: ModalidadeBNCC.ensinoFundamental,
  ),
  @HiveField(10)
  f8(
    code: 8,
    label: '8° Ano',
    modalidade: ModalidadeBNCC.ensinoFundamental,
  ),
  @HiveField(11)
  f9(
    code: 9,
    label: '9° Ano',
    modalidade: ModalidadeBNCC.ensinoFundamental,
  ),
  @HiveField(12)
  m1(
    code: 1,
    label: '1° Ano',
    modalidade: ModalidadeBNCC.ensinoMedio,
  ),
  @HiveField(13)
  m2(
    code: 2,
    label: '2° Ano',
    modalidade: ModalidadeBNCC.ensinoMedio,
  ),
  @HiveField(14)
  m3(
    code: 3,
    label: '3° Ano',
    modalidade: ModalidadeBNCC.ensinoMedio,
  );

  const SerieBNCC({
    required this.code,
    required this.label,
    required this.modalidade,
  });

  final int code;
  final String label;
  final ModalidadeBNCC modalidade;
}
