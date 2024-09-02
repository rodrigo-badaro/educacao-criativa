import 'package:bloc/bloc.dart';
import 'package:educacao_criativa/models/tipo_de_unidade_model.dart';
import 'package:educacao_criativa/screens/tipo_de_unidades/bloc/tipo_de_unidades_event.dart';
import 'package:educacao_criativa/screens/tipo_de_unidades/bloc/tipo_de_unidades_repository.dart';
import 'package:educacao_criativa/screens/tipo_de_unidades/bloc/tipo_de_unidades_state.dart';

class TipoDeUnidadesBloc extends Bloc<TipoDeUnidadesEvent, TipoDeUnidadesState> {
  final TipoDeUnidadesRepository _repository = TipoDeUnidadesRepository();

  TipoDeUnidadesBloc() : super(TipoDeUnidadesInitialState()) {
    on<LoadTipoDeUnidadesEvent>((event, emit) async {
      List<TipoDeUnidadeModel> tiposDeUnidades = _repository.data;
      emit(TipoDeUnidadesLoadingState());

      if (!_repository.isFetching) tiposDeUnidades = await _repository.fetch(forceReload: event.forceReload ?? false);

      emit(TipoDeUnidadesSuccessState(tiposDeUnidades: tiposDeUnidades));
      if (event.completer?.isCompleted == false) event.completer?.complete();
    });

    on<SearchTipoDeUnidadesEvent>((event, emit) {
      emit(TipoDeUnidadesLoadingState());
      List<TipoDeUnidadeModel> tiposDeUnidades = _repository.pesquisa(event.search);
      emit(TipoDeUnidadesSuccessState(tiposDeUnidades: tiposDeUnidades));
    });

    on<CreateTipoDeUnidadesEvent>((event, emit) async {
      event.button.animate(loading: true);

      await _repository.create(registro: event.registro);
      List<TipoDeUnidadeModel> tiposDeUnidades = await _repository.fetch(forceReload: true);

      event.button.animate(loading: false);
      if (!event.completer.isCompleted) event.completer.complete();

      emit(TipoDeUnidadesSuccessState(tiposDeUnidades: tiposDeUnidades));
    });

    on<UpdateTipoDeUnidadesEvent>((event, emit) async {
      event.button.animate(loading: true);

      await _repository.update(registro: event.registro);
      List<TipoDeUnidadeModel> tiposDeUnidades = await _repository.fetch(forceReload: true);

      event.button.animate(loading: false);
      if (!event.completer.isCompleted) event.completer.complete();

      emit(TipoDeUnidadesSuccessState(tiposDeUnidades: tiposDeUnidades));
    });

    on<RemoveTipoDeUnidadesEvent>((event, emit) async {
      event.button.animate(loading: true);

      await _repository.remove(registro: event.registro);
      List<TipoDeUnidadeModel> tiposDeUnidades = await _repository.fetch(forceReload: true);

      event.button.animate(loading: false);
      if (event.completer.isCompleted == false) event.completer.complete();

      emit(TipoDeUnidadesSuccessState(tiposDeUnidades: tiposDeUnidades));
    });
  }
}
