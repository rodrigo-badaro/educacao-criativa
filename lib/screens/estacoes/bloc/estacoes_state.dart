import 'package:educacao_criativa/models/estacao_model.dart';

abstract class EstacoesState {
  List<EstacaoModel> estacoes;

  EstacoesState({
    required this.estacoes,
  });
}

class EstacoesInitialState extends EstacoesState {
  EstacoesInitialState() : super(estacoes: []);
}

class EstacoesLoadingState extends EstacoesState {
  EstacoesLoadingState() : super(estacoes: []);
}

class EstacoesSuccessState extends EstacoesState {
  EstacoesSuccessState({required super.estacoes});
}
