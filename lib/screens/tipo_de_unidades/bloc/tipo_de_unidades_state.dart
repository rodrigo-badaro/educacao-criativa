import 'package:educacao_criativa/models/tipo_de_unidade_model.dart';

abstract class TipoDeUnidadesState {
  List<TipoDeUnidadeModel> tiposDeUnidades;

  TipoDeUnidadesState({
    required this.tiposDeUnidades,
  });
}

class TipoDeUnidadesInitialState extends TipoDeUnidadesState {
  TipoDeUnidadesInitialState() : super(tiposDeUnidades: []);
}

class TipoDeUnidadesLoadingState extends TipoDeUnidadesState {
  TipoDeUnidadesLoadingState() : super(tiposDeUnidades: []);
}

class TipoDeUnidadesSuccessState extends TipoDeUnidadesState {
  TipoDeUnidadesSuccessState({required super.tiposDeUnidades});
}
