import 'dart:async';
import 'package:educacao_criativa/models/item_model.dart';
import 'package:educacao_criativa/widgets/animated_button/animated_button_cubit.dart';

abstract class ItensEvent {}

class LoadItensEvent extends ItensEvent {
  Completer? completer;
  bool? forceReload;

  LoadItensEvent({
    this.completer,
    this.forceReload,
  });
}

class SearchItensEvent extends ItensEvent {
  String search;

  SearchItensEvent({
    required this.search,
  });
}

class CreateItensEvent extends ItensEvent {
  ItemModel registro;
  AnimatedButtonCubit button;
  Completer completer;

  CreateItensEvent({
    required this.registro,
    required this.button,
    required this.completer,
  });
}

class UpdateItensEvent extends ItensEvent {
  ItemModel registro;
  AnimatedButtonCubit button;
  Completer completer;

  UpdateItensEvent({
    required this.registro,
    required this.button,
    required this.completer,
  });
}

class RemoveItensEvent extends ItensEvent {
  ItemModel registro;
  AnimatedButtonCubit button;
  Completer completer;

  RemoveItensEvent({
    required this.registro,
    required this.button,
    required this.completer,
  });
}
