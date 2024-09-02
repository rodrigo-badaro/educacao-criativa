import 'dart:async';
import 'package:educacao_criativa/models/modalidade_model.dart';
import 'package:educacao_criativa/widgets/animated_button/animated_button_cubit.dart';

abstract class ModalidadesEvent {}

class LoadModalidadesEvent extends ModalidadesEvent {
  Completer? completer;
  bool? forceReload;

  LoadModalidadesEvent({
    this.completer,
    this.forceReload,
  });
}

class SearchModalidadesEvent extends ModalidadesEvent {
  String search;

  SearchModalidadesEvent({
    required this.search,
  });
}

class CreateModalidadesEvent extends ModalidadesEvent {
  ModalidadeModel registro;
  AnimatedButtonCubit button;
  Completer completer;

  CreateModalidadesEvent({
    required this.registro,
    required this.button,
    required this.completer,
  });
}

class UpdateModalidadesEvent extends ModalidadesEvent {
  ModalidadeModel registro;
  AnimatedButtonCubit button;
  Completer completer;

  UpdateModalidadesEvent({
    required this.registro,
    required this.button,
    required this.completer,
  });
}

class RemoveModalidadesEvent extends ModalidadesEvent {
  ModalidadeModel registro;
  AnimatedButtonCubit button;
  Completer completer;

  RemoveModalidadesEvent({
    required this.registro,
    required this.button,
    required this.completer,
  });
}
