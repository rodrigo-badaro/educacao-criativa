import 'package:bloc/bloc.dart';
import 'package:educacao_criativa/models/periodicidade_model.dart';
import 'package:educacao_criativa/screens/periodicidade/bloc/periodicidade_event.dart';
import 'package:educacao_criativa/screens/periodicidade/bloc/periodicidade_repository.dart';
import 'package:educacao_criativa/screens/periodicidade/bloc/periodicidade_state.dart';

class PeriodicidadeBloc extends Bloc<PeriodicidadeEvent, PeriodicidadeState> {
  final PeriodicidadeRepository _repository = PeriodicidadeRepository();

  PeriodicidadeBloc() : super(PeriodicidadeInitialState()) {
    on<LoadPeriodicidadeEvent>((event, emit) async {
      List<PeriodicidadeModel> periodicidades = _repository.data;
      emit(PeriodicidadeLoadingState());

      if (!_repository.isFetching) periodicidades = await _repository.fetch(forceReload: event.forceReload ?? false);

      emit(PeriodicidadeSuccessState(periodicidades: periodicidades));
      if (event.completer?.isCompleted == false) event.completer?.complete();
    });

    on<SearchPeriodicidadeEvent>((event, emit) {
      emit(PeriodicidadeLoadingState());
      List<PeriodicidadeModel> periodicidades = _repository.pesquisa(event.search);
      emit(PeriodicidadeSuccessState(periodicidades: periodicidades));
    });

    on<CreatePeriodicidadeEvent>((event, emit) async {
      event.button.animate(loading: true);

      await _repository.create(registro: event.registro);
      List<PeriodicidadeModel> periodicidades = await _repository.fetch(forceReload: true);

      event.button.animate(loading: false);
      if (!event.completer.isCompleted) event.completer.complete();

      emit(PeriodicidadeSuccessState(periodicidades: periodicidades));
    });

    on<UpdatePeriodicidadeEvent>((event, emit) async {
      event.button.animate(loading: true);

      await _repository.update(registro: event.registro);
      List<PeriodicidadeModel> periodicidades = await _repository.fetch(forceReload: true);

      event.button.animate(loading: false);
      if (!event.completer.isCompleted) event.completer.complete();

      emit(PeriodicidadeSuccessState(periodicidades: periodicidades));
    });

    on<RemovePeriodicidadeEvent>((event, emit) async {
      event.button.animate(loading: true);

      await _repository.remove(registro: event.registro);
      List<PeriodicidadeModel> periodicidades = await _repository.fetch(forceReload: true);

      event.button.animate(loading: false);
      if (event.completer.isCompleted == false) event.completer.complete();

      emit(PeriodicidadeSuccessState(periodicidades: periodicidades));
    });
  }
}
