import 'dart:async';

abstract class MateriaisDeApoioEvent {}

class LoadMateriaisDeApoioEvent extends MateriaisDeApoioEvent {
  Completer? completer;
  bool? forceReload;

  LoadMateriaisDeApoioEvent({
    this.completer,
    this.forceReload,
  });
}

class SearchMateriaisDeApoioEvent extends MateriaisDeApoioEvent {
  String search;

  SearchMateriaisDeApoioEvent({
    required this.search,
  });
}
