import 'dart:async';
import 'package:educacao_criativa/models/espaco/espaco_model.dart';
import 'package:educacao_criativa/widgets/animated_button/animated_button_cubit.dart';

abstract class EspacosEvent {}

class LoadEspacosEvent extends EspacosEvent {
  Completer? completer;
  bool? forceReload;

  LoadEspacosEvent({
    this.completer,
    this.forceReload,
  });
}

class SearchEspacosEvent extends EspacosEvent {
  String search;

  SearchEspacosEvent({
    required this.search,
  });
}

class CreateEspacosEvent extends EspacosEvent {
  EspacoModel registro;
  AnimatedButtonCubit button;
  Completer completer;

  CreateEspacosEvent({
    required this.registro,
    required this.button,
    required this.completer,
  });
}

class UpdateEspacosEvent extends EspacosEvent {
  EspacoModel registro;
  AnimatedButtonCubit button;
  Completer completer;

  UpdateEspacosEvent({
    required this.registro,
    required this.button,
    required this.completer,
  });
}

class RemoveEspacosEvent extends EspacosEvent {
  EspacoModel registro;
  AnimatedButtonCubit button;
  Completer completer;

  RemoveEspacosEvent({
    required this.registro,
    required this.button,
    required this.completer,
  });
}
