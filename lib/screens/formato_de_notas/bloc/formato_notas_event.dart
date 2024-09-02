import 'dart:async';
import 'package:educacao_criativa/models/formato_notas_model.dart';
import 'package:educacao_criativa/widgets/animated_button/animated_button_cubit.dart';

abstract class FormatoNotasEvent {}

class LoadFormatoNotasEvent extends FormatoNotasEvent {
  Completer? completer;
  bool? forceReload;

  LoadFormatoNotasEvent({
    this.completer,
    this.forceReload,
  });
}

class SearchFormatoNotasEvent extends FormatoNotasEvent {
  String search;

  SearchFormatoNotasEvent({
    required this.search,
  });
}

class CreateFormatoNotasEvent extends FormatoNotasEvent {
  FormatoNotasModel registro;
  AnimatedButtonCubit button;
  Completer completer;

  CreateFormatoNotasEvent({
    required this.registro,
    required this.button,
    required this.completer,
  });
}

class UpdateFormatoNotasEvent extends FormatoNotasEvent {
  FormatoNotasModel registro;
  AnimatedButtonCubit button;
  Completer completer;

  UpdateFormatoNotasEvent({
    required this.registro,
    required this.button,
    required this.completer,
  });
}

class RemoveFormatoNotasEvent extends FormatoNotasEvent {
  FormatoNotasModel registro;
  AnimatedButtonCubit button;
  Completer completer;

  RemoveFormatoNotasEvent({
    required this.registro,
    required this.button,
    required this.completer,
  });
}
