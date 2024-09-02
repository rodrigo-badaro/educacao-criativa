import 'package:bloc/bloc.dart';
import 'package:educacao_criativa/models/estacao_model.dart';
import 'package:educacao_criativa/screens/estacoes/bloc/estacoes_event.dart';
import 'package:educacao_criativa/screens/estacoes/bloc/estacoes_repository.dart';
import 'package:educacao_criativa/screens/estacoes/bloc/estacoes_state.dart';

class EstacoesBloc extends Bloc<EstacoesEvent, EstacoesState> {
  final EstacoesRepository _repository = EstacoesRepository();

  EstacoesBloc() : super(EstacoesInitialState()) {
    on<LoadEstacoesEvent>((event, emit) async {
      List<EstacaoModel> estacoes = _repository.data;
      emit(EstacoesLoadingState());

      if (!_repository.isFetching) estacoes = await _repository.fetch(forceReload: event.forceReload ?? false);

      emit(EstacoesSuccessState(estacoes: estacoes));
      if (event.completer?.isCompleted == false) event.completer?.complete();
    });

    on<SearchEstacoesEvent>((event, emit) {
      emit(EstacoesLoadingState());
      List<EstacaoModel> estacoes = _repository.pesquisa(event.search);
      emit(EstacoesSuccessState(estacoes: estacoes));
    });

    on<CreateEstacoesEvent>((event, emit) async {
      event.button.animate(loading: true);

      await _repository.create(registro: event.registro);
      List<EstacaoModel> estacoes = await _repository.fetch(forceReload: true);

      event.button.animate(loading: false);
      if (!event.completer.isCompleted) event.completer.complete();

      emit(EstacoesSuccessState(estacoes: estacoes));
    });

  

    on<RemoveEstacoesEvent>((event, emit) async {
      event.button.animate(loading: true);

      await _repository.remove(registro: event.registro);
      List<EstacaoModel> estacoes = await _repository.fetch(forceReload: true);

      event.button.animate(loading: false);
      if (event.completer.isCompleted == false) event.completer.complete();

      emit(EstacoesSuccessState(estacoes: estacoes));
    });
  }
}
