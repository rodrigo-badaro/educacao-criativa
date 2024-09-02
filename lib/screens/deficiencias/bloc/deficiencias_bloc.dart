import 'package:bloc/bloc.dart';
import 'package:educacao_criativa/models/deficiencia_model.dart';
import 'package:educacao_criativa/screens/deficiencias/bloc/deficiencias_event.dart';
import 'package:educacao_criativa/screens/deficiencias/bloc/deficiencias_repository.dart';
import 'package:educacao_criativa/screens/deficiencias/bloc/deficiencias_state.dart';

class DeficienciasBloc extends Bloc<DeficienciasEvent, DeficienciasState> {
  final DeficienciasRepository _repository = DeficienciasRepository();

  DeficienciasBloc() : super(DeficienciasInitialState()) {
    on<LoadDeficienciasEvent>((event, emit) async {
      List<DeficienciaModel> deficiencias = _repository.data;
      emit(DeficienciasLoadingState());

      if (!_repository.isFetching) deficiencias = await _repository.fetch(forceReload: event.forceReload ?? false);

      emit(DeficienciasSuccessState(deficiencias: deficiencias));
      if (event.completer?.isCompleted == false) event.completer?.complete();
    });

    on<SearchDeficienciasEvent>((event, emit) {
      emit(DeficienciasLoadingState());
      List<DeficienciaModel> deficiencias = _repository.pesquisa(event.search);
      emit(DeficienciasSuccessState(deficiencias: deficiencias));
    });

    on<CreateDeficienciasEvent>((event, emit) async {
      event.button.animate(loading: true);

      await _repository.create(registro: event.registro);
      List<DeficienciaModel> deficiencias = await _repository.fetch(forceReload: true);

      event.button.animate(loading: false);
      if (!event.completer.isCompleted) event.completer.complete();

      emit(DeficienciasSuccessState(deficiencias: deficiencias));
    });

    on<UpdateDeficienciasEvent>((event, emit) async {
      event.button.animate(loading: true);

      await _repository.update(registro: event.registro);
      List<DeficienciaModel> deficiencias = await _repository.fetch(forceReload: true);

      event.button.animate(loading: false);
      if (!event.completer.isCompleted) event.completer.complete();

      emit(DeficienciasSuccessState(deficiencias: deficiencias));
    });

    on<RemoveDeficienciasEvent>((event, emit) async {
      event.button.animate(loading: true);

      await _repository.remove(registro: event.registro);
      List<DeficienciaModel> deficiencias = await _repository.fetch(forceReload: true);

      event.button.animate(loading: false);
      if (event.completer.isCompleted == false) event.completer.complete();

      emit(DeficienciasSuccessState(deficiencias: deficiencias));
    });
  }
}
