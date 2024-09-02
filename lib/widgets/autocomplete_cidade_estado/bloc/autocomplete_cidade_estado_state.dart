import 'package:educacao_criativa/widgets/autocomplete_cidade_estado/bloc/autocomplete_cidade_estado_model.dart';

abstract class AutocompleteCidadeEstadoState {
  List<AutocompleteCidadeEstadoModel> cidades;

  AutocompleteCidadeEstadoState({required this.cidades});
}

class CityInitialState extends AutocompleteCidadeEstadoState {
  CityInitialState() : super(cidades: []);
}

class CityLoadState extends AutocompleteCidadeEstadoState {
  CityLoadState({required List<AutocompleteCidadeEstadoModel> cidades})
      : super(cidades: []);
}

class CitySuccessState extends AutocompleteCidadeEstadoState {
  CitySuccessState({required super.cidades});
}
