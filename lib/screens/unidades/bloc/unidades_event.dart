import 'dart:async';
import 'package:educacao_criativa/models/unidade_model.dart';
import 'package:educacao_criativa/widgets/animated_button/animated_button_cubit.dart';

abstract class UnidadesEvent {}

class LoadUnidadesEvent extends UnidadesEvent {
  Completer? completer;
  bool? forceReload;

  LoadUnidadesEvent({
    this.completer,
    this.forceReload,
  });
}

class SearchUnidadesEvent extends UnidadesEvent {
  String search;

  SearchUnidadesEvent({
    required this.search,
  });
}

class CreateUnidadesEvent extends UnidadesEvent {
  UnidadeModel registro;
  AnimatedButtonCubit button;
  Completer completer;

  CreateUnidadesEvent({
    required this.registro,
    required this.button,
    required this.completer,
  });
}

class UpdateUnidadesEvent extends UnidadesEvent {
  UnidadeModel registro;
  AnimatedButtonCubit button;
  Completer completer;

  UpdateUnidadesEvent({
    required this.registro,
    required this.button,
    required this.completer,
  });
}

class RemoveUnidadesEvent extends UnidadesEvent {
  UnidadeModel registro;
  AnimatedButtonCubit button;
  Completer completer;

  RemoveUnidadesEvent({
    required this.registro,
    required this.button,
    required this.completer,
  });
}
