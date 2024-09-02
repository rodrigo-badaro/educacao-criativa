import 'package:bloc/bloc.dart';
import 'package:educacao_criativa/models/serie_model.dart';
import 'package:educacao_criativa/screens/estrutura_organizacional/anos/bloc/series_event.dart';
import 'package:educacao_criativa/screens/estrutura_organizacional/anos/bloc/series_repository.dart';
import 'package:educacao_criativa/screens/estrutura_organizacional/anos/bloc/series_state.dart';

class SeriesBloc extends Bloc<SeriesEvent, SeriesState> {
  final SeriesRepository _repository = SeriesRepository();

  SeriesBloc() : super(SeriesInitialState()) {
    on<LoadSeriesEvent>((event, emit) async {
      List<SerieModel> series = _repository.data;
      emit(SeriesLoadingState());

      if (!_repository.isFetching) series = await _repository.fetch(forceReload: event.forceReload ?? false);

      emit(SeriesSuccessState(series: series));
      if (event.completer?.isCompleted == false) event.completer?.complete();
    });

    on<SearchSeriesEvent>((event, emit) {
      emit(SeriesLoadingState());
      List<SerieModel> series = _repository.pesquisa(event.search);
      emit(SeriesSuccessState(series: series));
    });

    on<CreateSeriesEvent>((event, emit) async {
      event.button.animate(loading: true);

      await _repository.create(registro: event.registro);
      List<SerieModel> series = await _repository.fetch(forceReload: true);

      event.button.animate(loading: false);
      if (!event.completer.isCompleted) event.completer.complete();

      emit(SeriesSuccessState(series: series));
    });

    on<UpdateSeriesEvent>((event, emit) async {
      event.button.animate(loading: true);

      await _repository.update(registro: event.registro);
      List<SerieModel> series = await _repository.fetch(forceReload: true);

      event.button.animate(loading: false);
      if (!event.completer.isCompleted) event.completer.complete();

      emit(SeriesSuccessState(series: series));
    });

    on<RemoveSeriesEvent>((event, emit) async {
      event.button.animate(loading: true);

      await _repository.remove(registro: event.registro);
      List<SerieModel> series = await _repository.fetch(forceReload: true);

      event.button.animate(loading: false);
      if (event.completer.isCompleted == false) event.completer.complete();

      emit(SeriesSuccessState(series: series));
    });
  }
}
