import 'dart:async';
import 'package:educacao_criativa/models/estacao_model.dart';
import 'package:educacao_criativa/widgets/animated_button/animated_button_cubit.dart';

abstract class EstacoesEvent {}


class LoadEstacoesEvent extends EstacoesEvent {
  Completer? completer;
  bool? forceReload;

  LoadEstacoesEvent({
    this.completer,
    this.forceReload,
  });
}

class SearchEstacoesEvent extends EstacoesEvent {
  String search;

  SearchEstacoesEvent({
    required this.search,
  });
}

class CreateEstacoesEvent extends EstacoesEvent {
  EstacaoModel registro;
  AnimatedButtonCubit button;
  Completer completer;

  CreateEstacoesEvent({
    required this.registro,
    required this.button,
    required this.completer,
  });
}


class RemoveEstacoesEvent extends EstacoesEvent {
  EstacaoModel registro;
  AnimatedButtonCubit button;
  Completer completer;

  RemoveEstacoesEvent({
    required this.registro,
    required this.button,
    required this.completer,
  });
}
