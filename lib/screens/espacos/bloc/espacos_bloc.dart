import 'package:bloc/bloc.dart';
import 'package:educacao_criativa/models/espaco/espaco_model.dart';
import 'package:educacao_criativa/screens/espacos/bloc/espacos_event.dart';
import 'package:educacao_criativa/screens/espacos/bloc/espacos_repository.dart';
import 'package:educacao_criativa/screens/espacos/bloc/espacos_state.dart';

class EspacosBloc extends Bloc<EspacosEvent, EspacosState> {
  final EspacosRepository _repository = EspacosRepository();

  EspacosBloc() : super(EspacosInitialState()) {
    on<LoadEspacosEvent>((event, emit) async {
      List<EspacoModel> espacos = _repository.data;
      emit(EspacosLoadingState());

      if (!_repository.isFetching) espacos = await _repository.fetch(forceReload: event.forceReload ?? false);

      emit(EspacosSuccessState(espacos: espacos));
      if (event.completer?.isCompleted == false) event.completer?.complete();
    });

    on<SearchEspacosEvent>((event, emit) {
      emit(EspacosLoadingState());
      List<EspacoModel> espacos = _repository.pesquisa(event.search);
      emit(EspacosSuccessState(espacos: espacos));
    });

    on<CreateEspacosEvent>((event, emit) async {
      event.button.animate(loading: true);

      await _repository.create(registro: event.registro);
      List<EspacoModel> espacos = await _repository.fetch(forceReload: true);

      event.button.animate(loading: false);
      if (!event.completer.isCompleted) event.completer.complete();

      emit(EspacosSuccessState(espacos: espacos));
    });

    on<UpdateEspacosEvent>((event, emit) async {
      event.button.animate(loading: true);

      await _repository.update(registro: event.registro);
      List<EspacoModel> espacos = await _repository.fetch(forceReload: true);

      event.button.animate(loading: false);
      if (!event.completer.isCompleted) event.completer.complete();

      emit(EspacosSuccessState(espacos: espacos));
    });

    on<RemoveEspacosEvent>((event, emit) async {
      event.button.animate(loading: true);

      await _repository.remove(registro: event.registro);
      List<EspacoModel> espacos = await _repository.fetch(forceReload: true);

      event.button.animate(loading: false);
      if (event.completer.isCompleted == false) event.completer.complete();

      emit(EspacosSuccessState(espacos: espacos));
    });
  }
}
