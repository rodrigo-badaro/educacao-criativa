import 'dart:async';
import 'package:educacao_criativa/models/serie_model.dart';
import 'package:educacao_criativa/widgets/animated_button/animated_button_cubit.dart';

abstract class SeriesEvent {}

class LoadSeriesEvent extends SeriesEvent {
  Completer? completer;
  bool? forceReload;

  LoadSeriesEvent({
    this.completer,
    this.forceReload,
  });
}

class SearchSeriesEvent extends SeriesEvent {
  String search;

  SearchSeriesEvent({
    required this.search,
  });
}

class CreateSeriesEvent extends SeriesEvent {
  SerieModel registro;
  AnimatedButtonCubit button;
  Completer completer;

  CreateSeriesEvent({
    required this.registro,
    required this.button,
    required this.completer,
  });
}

class UpdateSeriesEvent extends SeriesEvent {
  SerieModel registro;
  AnimatedButtonCubit button;
  Completer completer;

  UpdateSeriesEvent({
    required this.registro,
    required this.button,
    required this.completer,
  });
}

class RemoveSeriesEvent extends SeriesEvent {
  SerieModel registro;
  AnimatedButtonCubit button;
  Completer completer;

  RemoveSeriesEvent({
    required this.registro,
    required this.button,
    required this.completer,
  });
}
