import 'package:bloc/bloc.dart';
import 'package:educacao_criativa/widgets/autocomplete_cidade_estado/bloc/autocomplete_cidade_estado_event.dart';
import 'package:educacao_criativa/widgets/autocomplete_cidade_estado/bloc/autocomplete_cidade_estado_model.dart';
import 'package:educacao_criativa/widgets/autocomplete_cidade_estado/bloc/autocomplete_cidade_estado_repository.dart';
import 'package:educacao_criativa/widgets/autocomplete_cidade_estado/bloc/autocomplete_cidade_estado_state.dart';

class AutocompleteCidadeEstadoBloc
    extends Bloc<AutocompleteCidadeEstadoEvent, AutocompleteCidadeEstadoState> {
  final _repository =
      AutocompleteCidadeEstadoRepository(); //USAR PROVIDER OU GET-IT PRA RECUPERAR A INSTANCIA

  AutocompleteCidadeEstadoBloc() : super(CityInitialState()) {
    on<LoadIBGE>((event, emit) async {
      List<AutocompleteCidadeEstadoModel> cidades = _repository.cidades;
      if (cidades.isEmpty) cidades = await _repository.loadCity();

      emit(CitySuccessState(cidades: cidades));
    });
  }
}
