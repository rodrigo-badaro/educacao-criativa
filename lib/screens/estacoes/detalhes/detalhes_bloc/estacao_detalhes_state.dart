import 'package:educacao_criativa/models/estacao_model.dart';

abstract class EstacaoDetalhesState {
  EstacaoModel? estacao;

  EstacaoDetalhesState({required this.estacao});
}

class EstacaoDetalhesInitialState extends EstacaoDetalhesState {
  EstacaoDetalhesInitialState() : super(estacao: null);
}

class EstacaoDetalhesLoadingState extends EstacaoDetalhesState {
  EstacaoDetalhesLoadingState() : super(estacao: null);
}

class EstacaoDetalhesSuccessState extends EstacaoDetalhesState {
  EstacaoDetalhesSuccessState({required super.estacao});
}
