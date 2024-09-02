import 'package:educacao_criativa/models/model_types.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'blocos_bncc_model.g.dart';

@HiveType(typeId: blocosBnccModelType)
enum BlocosBNCC {
  @HiveField(0)
  bloco1(value: 1, label: 'Bloco 1'),
  @HiveField(1)
  bloco2(value: 2, label: 'Bloco 2'),
  @HiveField(2)
  bloco3(value: 3, label: 'Bloco 3');

  const BlocosBNCC({
    required this.value,
    required this.label,
  });

  final int value;
  final String label;
}
