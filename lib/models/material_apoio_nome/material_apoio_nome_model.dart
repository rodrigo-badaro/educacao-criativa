import 'package:educacao_criativa/models/model_types.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'material_apoio_nome_model.g.dart';

@HiveType(typeId: materialApoioNomeModelType, adapterName: 'MaterialApoioNomeAdapter')
enum MaterialApoioNome {
  @HiveField(0)
  professor(value: 'professor', label: 'Professor(a)'),
  @HiveField(1)
  diretor(value: 'diretor', label: 'Diretor(a)');

  const MaterialApoioNome({
    required this.value,
    required this.label,
  });

  final String value;
  final String label;
}
