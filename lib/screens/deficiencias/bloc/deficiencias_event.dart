import 'dart:async';
import 'package:educacao_criativa/models/deficiencia_model.dart';
import 'package:educacao_criativa/widgets/animated_button/animated_button_cubit.dart';

abstract class DeficienciasEvent {}

class LoadDeficienciasEvent extends DeficienciasEvent {
  Completer? completer;
  bool? forceReload;

  LoadDeficienciasEvent({
    this.completer,
    this.forceReload,
  });
}

class SearchDeficienciasEvent extends DeficienciasEvent {
  String search;

  SearchDeficienciasEvent({
    required this.search,
  });
}

class CreateDeficienciasEvent extends DeficienciasEvent {
  DeficienciaModel registro;
  AnimatedButtonCubit button;
  Completer completer;

  CreateDeficienciasEvent({
    required this.registro,
    required this.button,
    required this.completer,
  });
}

class UpdateDeficienciasEvent extends DeficienciasEvent {
  DeficienciaModel registro;
  AnimatedButtonCubit button;
  Completer completer;

  UpdateDeficienciasEvent({
    required this.registro,
    required this.button,
    required this.completer,
  });
}

class RemoveDeficienciasEvent extends DeficienciasEvent {
  DeficienciaModel registro;
  AnimatedButtonCubit button;
  Completer completer;

  RemoveDeficienciasEvent({
    required this.registro,
    required this.button,
    required this.completer,
  });
}
