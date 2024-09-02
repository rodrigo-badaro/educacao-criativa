import 'dart:async';
import 'package:educacao_criativa/models/usuario_model.dart';
import 'package:educacao_criativa/widgets/animated_button/animated_button_cubit.dart';

abstract class UsuariosEvent {}

class LoadUsuariosEvent extends UsuariosEvent {
  Completer? completer;
  bool? forceReload;

  LoadUsuariosEvent({
    this.completer,
    this.forceReload,
  });
}

class SearchUsuariosEvent extends UsuariosEvent {
  String search;

  SearchUsuariosEvent({
    required this.search,
  });
}

class ResetPasswordUsuariosEvent extends UsuariosEvent {
  UsuarioModel registro;
  AnimatedButtonCubit button;
  Completer completer;

  ResetPasswordUsuariosEvent({
    required this.registro,
    required this.button,
    required this.completer,
  });
}
