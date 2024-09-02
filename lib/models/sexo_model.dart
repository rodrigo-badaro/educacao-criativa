import 'package:educacao_criativa/models/model_types.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'sexo_model.g.dart';

@HiveType(typeId: sexoModelType, adapterName: 'SexoModelAdapter')
enum SexoModel {
  @HiveField(0)
  masculino(value: 'homem', label: 'Masculino'),
  @HiveField(1)
  feminino(value: 'mulher', label: 'Feminino');

  const SexoModel({
    required this.value,
    required this.label,
  });

  final String value;
  final String label;
}
