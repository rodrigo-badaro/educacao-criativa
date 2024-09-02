import 'package:educacao_criativa/models/bncc/bncc_code_information/modalidade_bncc_model.dart';
import 'package:educacao_criativa/models/model_types.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'tema_bncc_model.g.dart';

@HiveType(typeId: temaBnccModelType)
enum TemaBNCC {
  @HiveField(0)
  iEO(
    code: 'EO',
    label: 'O eu, o outro e o nós',
    modalidade: ModalidadeBNCC.educacaoInfantil,
  ),
  @HiveField(1)
  iCG(
    code: 'CG',
    label: 'Corpo, gestos e movimentos',
    modalidade: ModalidadeBNCC.educacaoInfantil,
  ),
  @HiveField(2)
  iTS(
    code: 'TS',
    label: 'Traços, sons, cores e formas',
    modalidade: ModalidadeBNCC.educacaoInfantil,
  ),
  @HiveField(3)
  iEF(
    code: 'EF',
    label: 'Escuta, fala, pensamento e imaginação',
    modalidade: ModalidadeBNCC.educacaoInfantil,
  ),
  @HiveField(4)
  iET(
    code: 'ET',
    label: 'Espaços, tempos, quantidades, relações e transformações',
    modalidade: ModalidadeBNCC.educacaoInfantil,
  ),
  @HiveField(5)
  fAR(
    code: 'AR',
    label: 'Arte',
    modalidade: ModalidadeBNCC.ensinoFundamental,
  ),
  @HiveField(6)
  fCI(
    code: 'CI',
    label: 'Ciências',
    modalidade: ModalidadeBNCC.ensinoFundamental,
  ),
  @HiveField(7)
  fEF(
    code: 'EF',
    label: 'Educação Física',
    modalidade: ModalidadeBNCC.ensinoFundamental,
  ),
  @HiveField(8)
  fER(
    code: 'ER',
    label: 'Ensino Religioso',
    modalidade: ModalidadeBNCC.ensinoFundamental,
  ),
  @HiveField(9)
  fGE(
    code: 'GE',
    label: 'Geografia',
    modalidade: ModalidadeBNCC.ensinoFundamental,
  ),
  @HiveField(10)
  fHI(
    code: 'HI',
    label: 'História',
    modalidade: ModalidadeBNCC.ensinoFundamental,
  ),
  @HiveField(11)
  fLI(
    code: 'LI',
    label: 'Língua Inglesa',
    modalidade: ModalidadeBNCC.ensinoFundamental,
  ),
  @HiveField(12)
  fLP(
    code: 'LP',
    label: 'Língua Portuguesa',
    modalidade: ModalidadeBNCC.ensinoFundamental,
  ),
  @HiveField(13)
  fMA(
    code: 'MA',
    label: 'Matemática',
    modalidade: ModalidadeBNCC.ensinoFundamental,
  ),
  @HiveField(14)
  mLGG(
    code: 'LGG',
    label: 'Linguagens e suas Tecnologais',
    modalidade: ModalidadeBNCC.ensinoMedio,
  ),
  @HiveField(15)
  mLP(
    code: 'LP',
    label: 'Língua Portuguesa',
    modalidade: ModalidadeBNCC.ensinoMedio,
  ),
  @HiveField(16)
  mMAT(
    code: 'MAT',
    label: 'Matemática e suas Tecnologias',
    modalidade: ModalidadeBNCC.ensinoMedio,
  ),
  @HiveField(17)
  mCNT(
    code: 'CNT',
    label: 'Ciências da Natureza e suas Tecnologias',
    modalidade: ModalidadeBNCC.ensinoMedio,
  ),
  @HiveField(18)
  mCHS(
    code: 'CHS',
    label: 'Ciências Humanas e Sociais Aplicadas',
    modalidade: ModalidadeBNCC.ensinoMedio,
  );

  const TemaBNCC({
    required this.code,
    required this.label,
    required this.modalidade,
  });

  final String code;
  final String label;
  final ModalidadeBNCC modalidade;
}
