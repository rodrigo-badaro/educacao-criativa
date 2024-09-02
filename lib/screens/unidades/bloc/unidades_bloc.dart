import 'package:bloc/bloc.dart';
import 'package:educacao_criativa/models/unidade_model.dart';
import 'package:educacao_criativa/screens/unidades/bloc/unidades_event.dart';
import 'package:educacao_criativa/screens/unidades/bloc/unidades_repository.dart';
import 'package:educacao_criativa/screens/unidades/bloc/unidades_state.dart';

class UnidadesBloc extends Bloc<UnidadesEvent, UnidadesState> {
  final UnidadesRepository _repository = UnidadesRepository();

  UnidadesBloc() : super(UnidadesInitialState()) {
    on<LoadUnidadesEvent>((event, emit) async {
      List<UnidadeModel> unidades = _repository.data;
      emit(UnidadesLoadingState());

      if (!_repository.isFetching) unidades = await _repository.fetch(forceReload: event.forceReload ?? false);

      emit(UnidadesSuccessState(unidades: unidades));
      if (event.completer?.isCompleted == false) event.completer?.complete();
    });

    on<SearchUnidadesEvent>((event, emit) {
      emit(UnidadesLoadingState());
      List<UnidadeModel> unidades = _repository.pesquisa(event.search);
      emit(UnidadesSuccessState(unidades: unidades));
    });

    on<CreateUnidadesEvent>((event, emit) async {
      event.button.animate(loading: true);

      await _repository.create(registro: event.registro);
      List<UnidadeModel> unidades = await _repository.fetch(forceReload: true);

      event.button.animate(loading: false);
      if (!event.completer.isCompleted) event.completer.complete();

      emit(UnidadesSuccessState(unidades: unidades));
    });

    on<UpdateUnidadesEvent>((event, emit) async {
      event.button.animate(loading: true);

      await _repository.update(registro: event.registro);
      List<UnidadeModel> unidades = await _repository.fetch(forceReload: true);

      event.button.animate(loading: false);
      if (!event.completer.isCompleted) event.completer.complete();

      emit(UnidadesSuccessState(unidades: unidades));
    });

    on<RemoveUnidadesEvent>((event, emit) async {
      event.button.animate(loading: true);

      await _repository.remove(registro: event.registro);
      List<UnidadeModel> unidades = await _repository.fetch(forceReload: true);

      event.button.animate(loading: false);
      if (event.completer.isCompleted == false) event.completer.complete();

      emit(UnidadesSuccessState(unidades: unidades));
    });
  }
}
