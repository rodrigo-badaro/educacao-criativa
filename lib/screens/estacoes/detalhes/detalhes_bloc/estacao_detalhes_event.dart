import 'dart:async';
import 'package:educacao_criativa/models/estacao_model.dart';
import 'package:educacao_criativa/widgets/animated_button/animated_button_cubit.dart';

abstract class EstacaoDetalhesEvent {}

class LoadEstacaoDetalhesEvent extends EstacaoDetalhesEvent {
  int id;

  LoadEstacaoDetalhesEvent({
    required this.id,
  });
}

class UpdateEstacaoDetalhesEvent extends EstacaoDetalhesEvent {
  AnimatedButtonCubit button;
  EstacaoModel registro;
  Completer completer;

  UpdateEstacaoDetalhesEvent({
    required this.button,
    required this.completer,
    required this.registro,
  });
}

class DeleteEstacaoDetalhesEvent extends EstacaoDetalhesEvent {
  AnimatedButtonCubit button;
  EstacaoModel registro;
  Completer completer;

  DeleteEstacaoDetalhesEvent({
    required this.button,
    required this.completer,
    required this.registro,
  });
}

class SearchEstacaoDetalhesDocumentosEvent extends EstacaoDetalhesEvent {
  String search;

  SearchEstacaoDetalhesDocumentosEvent({
    required this.search,
  });
}
