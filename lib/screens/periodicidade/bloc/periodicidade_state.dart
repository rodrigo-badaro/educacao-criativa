import 'package:educacao_criativa/models/periodicidade_model.dart';

abstract class PeriodicidadeState {
  List<PeriodicidadeModel> periodicidades;

  PeriodicidadeState({
    required this.periodicidades,
  });
}

class PeriodicidadeInitialState extends PeriodicidadeState {
  PeriodicidadeInitialState() : super(periodicidades: []);
}

class PeriodicidadeLoadingState extends PeriodicidadeState {
  PeriodicidadeLoadingState() : super(periodicidades: []);
}

class PeriodicidadeSuccessState extends PeriodicidadeState {
  PeriodicidadeSuccessState({required super.periodicidades});
}
