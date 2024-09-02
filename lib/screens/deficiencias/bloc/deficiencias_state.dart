import 'package:educacao_criativa/models/deficiencia_model.dart';

abstract class DeficienciasState {
  List<DeficienciaModel> deficiencias;

  DeficienciasState({
    required this.deficiencias,
  });
}

class DeficienciasInitialState extends DeficienciasState {
  DeficienciasInitialState() : super(deficiencias: []);
}

class DeficienciasLoadingState extends DeficienciasState {
  DeficienciasLoadingState() : super(deficiencias: []);
}

class DeficienciasSuccessState extends DeficienciasState {
  DeficienciasSuccessState({required super.deficiencias});
}
