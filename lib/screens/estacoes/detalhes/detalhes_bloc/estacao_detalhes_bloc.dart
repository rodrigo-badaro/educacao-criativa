import 'package:bloc/bloc.dart';
import 'package:educacao_criativa/models/estacao_model.dart';
import 'package:educacao_criativa/screens/estacoes/detalhes/detalhes_bloc/estacao_detalhes_event.dart';
import 'package:educacao_criativa/screens/estacoes/detalhes/detalhes_bloc/estacao_detalhes_repository.dart';
import 'package:educacao_criativa/screens/estacoes/detalhes/detalhes_bloc/estacao_detalhes_state.dart';

class EstacaoDetalhesBloc extends Bloc<EstacaoDetalhesEvent, EstacaoDetalhesState> {
  final _repository = EstacaoDetalhesRepository();

  EstacaoDetalhesBloc() : super(EstacaoDetalhesInitialState()) {
    on<LoadEstacaoDetalhesEvent>((event, emit) async {
      emit(EstacaoDetalhesLoadingState());

      EstacaoModel? estacao = await _repository.fetchDetalhes(id: event.id);

      emit(EstacaoDetalhesSuccessState(estacao: estacao));
    });

    on<UpdateEstacaoDetalhesEvent>((event, emit) async {
      event.button.animate(loading: true);

      EstacaoModel? estacao = await _repository.updateDetalhes(
        newData: event.registro,
        id: event.registro.id ?? 0,
      );

      event.button.animate(loading: false);
      if (!event.completer.isCompleted) event.completer.complete();

      emit(EstacaoDetalhesSuccessState(estacao: estacao));
    });

    on<DeleteEstacaoDetalhesEvent>((event, emit) async {
      event.button.animate(loading: true);

      await _repository.delete(id: event.registro.id ?? 0);

      event.button.animate(loading: false);
      if (!event.completer.isCompleted) event.completer.complete();
    });

    // on<SearchEstacaoDetalhesDocumentosEvent>((event, emit) async {
    //   emit(EstacaoDetalhesLoadingState());
    //   EstacaoModel? estacao = _repository.estacao;
    //   List<TransportesModel> transportes = _repository.transportes;
    //   List<EstacaosDocumentosModel> documentos = await _repository.searchDocumentos(search: event.search);

    //   emit(EstacaoDetalhesSuccessState(estacao: estacao));
    // });
  }
}
