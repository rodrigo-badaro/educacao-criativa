import 'package:educacao_criativa/models/unidade_model.dart';

abstract class UnidadesState {
  List<UnidadeModel> unidades;

  UnidadesState({
    required this.unidades,
  });
}

class UnidadesInitialState extends UnidadesState {
  UnidadesInitialState() : super(unidades: []);
}

class UnidadesLoadingState extends UnidadesState {
  UnidadesLoadingState() : super(unidades: []);
}

class UnidadesSuccessState extends UnidadesState {
  UnidadesSuccessState({required super.unidades});
}
