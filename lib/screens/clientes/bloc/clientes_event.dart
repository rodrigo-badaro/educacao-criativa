import 'dart:async';
import 'package:educacao_criativa/models/cliente_model.dart';
import 'package:educacao_criativa/widgets/animated_button/animated_button_cubit.dart';

abstract class ClientesEvent {}

class LoadClientesEvent extends ClientesEvent {
  Completer? completer;
  bool? forceReload;

  LoadClientesEvent({
    this.completer,
    this.forceReload,
  });
}

class SearchClientesEvent extends ClientesEvent {
  String search;

  SearchClientesEvent({
    required this.search,
  });
}

class CreateClientesEvent extends ClientesEvent {
  ClienteModel registro;
  AnimatedButtonCubit button;
  Completer completer;

  CreateClientesEvent({
    required this.registro,
    required this.button,
    required this.completer,
  });
}

class UpdateClientesEvent extends ClientesEvent {
  ClienteModel registro;
  AnimatedButtonCubit button;
  Completer completer;

  UpdateClientesEvent({
    required this.registro,
    required this.button,
    required this.completer,
  });
}

class RemoveClientesEvent extends ClientesEvent {
  ClienteModel registro;
  AnimatedButtonCubit button;
  Completer completer;

  RemoveClientesEvent({
    required this.registro,
    required this.button,
    required this.completer,
  });
}
