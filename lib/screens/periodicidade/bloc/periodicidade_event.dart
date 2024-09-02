import 'dart:async';
import 'package:educacao_criativa/models/periodicidade_model.dart';
import 'package:educacao_criativa/widgets/animated_button/animated_button_cubit.dart';

abstract class PeriodicidadeEvent {}

class LoadPeriodicidadeEvent extends PeriodicidadeEvent {
  Completer? completer;
  bool? forceReload;

  LoadPeriodicidadeEvent({
    this.completer,
    this.forceReload,
  });
}

class SearchPeriodicidadeEvent extends PeriodicidadeEvent {
  String search;

  SearchPeriodicidadeEvent({
    required this.search,
  });
}

class CreatePeriodicidadeEvent extends PeriodicidadeEvent {
  PeriodicidadeModel registro;
  AnimatedButtonCubit button;
  Completer completer;

  CreatePeriodicidadeEvent({
    required this.registro,
    required this.button,
    required this.completer,
  });
}

class UpdatePeriodicidadeEvent extends PeriodicidadeEvent {
  PeriodicidadeModel registro;
  AnimatedButtonCubit button;
  Completer completer;

  UpdatePeriodicidadeEvent({
    required this.registro,
    required this.button,
    required this.completer,
  });
}

class RemovePeriodicidadeEvent extends PeriodicidadeEvent {
  PeriodicidadeModel registro;
  AnimatedButtonCubit button;
  Completer completer;

  RemovePeriodicidadeEvent({
    required this.registro,
    required this.button,
    required this.completer,
  });
}
