import 'dart:async';
import 'package:educacao_criativa/models/tipo_de_unidade_model.dart';
import 'package:educacao_criativa/widgets/animated_button/animated_button_cubit.dart';

abstract class TipoDeUnidadesEvent {}

class LoadTipoDeUnidadesEvent extends TipoDeUnidadesEvent {
  Completer? completer;
  bool? forceReload;

  LoadTipoDeUnidadesEvent({
    this.completer,
    this.forceReload,
  });
}

class SearchTipoDeUnidadesEvent extends TipoDeUnidadesEvent {
  String search;

  SearchTipoDeUnidadesEvent({
    required this.search,
  });
}

class CreateTipoDeUnidadesEvent extends TipoDeUnidadesEvent {
  TipoDeUnidadeModel registro;
  AnimatedButtonCubit button;
  Completer completer;

  CreateTipoDeUnidadesEvent({
    required this.registro,
    required this.button,
    required this.completer,
  });
}

class UpdateTipoDeUnidadesEvent extends TipoDeUnidadesEvent {
  TipoDeUnidadeModel registro;
  AnimatedButtonCubit button;
  Completer completer;

  UpdateTipoDeUnidadesEvent({
    required this.registro,
    required this.button,
    required this.completer,
  });
}

class RemoveTipoDeUnidadesEvent extends TipoDeUnidadesEvent {
  TipoDeUnidadeModel registro;
  AnimatedButtonCubit button;
  Completer completer;

  RemoveTipoDeUnidadesEvent({
    required this.registro,
    required this.button,
    required this.completer,
  });
}
