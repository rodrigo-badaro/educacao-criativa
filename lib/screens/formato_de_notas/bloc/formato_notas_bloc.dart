import 'package:bloc/bloc.dart';
import 'package:educacao_criativa/models/formato_notas_model.dart';
import 'package:educacao_criativa/screens/formato_de_notas/bloc/formato_notas_event.dart';
import 'package:educacao_criativa/screens/formato_de_notas/bloc/formato_notas_repository.dart';
import 'package:educacao_criativa/screens/formato_de_notas/bloc/formato_notas_state.dart';

class FormatoNotasBloc extends Bloc<FormatoNotasEvent, FormatoNotasState> {
  final FormatoNotasRepository _repository = FormatoNotasRepository();

  FormatoNotasBloc() : super(FormatoNotasInitialState()) {
    on<LoadFormatoNotasEvent>((event, emit) async {
      List<FormatoNotasModel> formatos = _repository.data;
      emit(FormatoNotasLoadingState());

      if (!_repository.isFetching) formatos = await _repository.fetch(forceReload: event.forceReload ?? false);

      emit(FormatoNotasSuccessState(formatos: formatos));
      if (event.completer?.isCompleted == false) event.completer?.complete();
    });

    on<SearchFormatoNotasEvent>((event, emit) {
      emit(FormatoNotasLoadingState());
      List<FormatoNotasModel> formatos = _repository.pesquisa(event.search);
      emit(FormatoNotasSuccessState(formatos: formatos));
    });

    on<CreateFormatoNotasEvent>((event, emit) async {
      event.button.animate(loading: true);

      await _repository.create(registro: event.registro);
      List<FormatoNotasModel> formatos = await _repository.fetch(forceReload: true);

      event.button.animate(loading: false);
      if (!event.completer.isCompleted) event.completer.complete();

      emit(FormatoNotasSuccessState(formatos: formatos));
    });

    on<UpdateFormatoNotasEvent>((event, emit) async {
      event.button.animate(loading: true);

      await _repository.update(registro: event.registro);
      List<FormatoNotasModel> formatos = await _repository.fetch(forceReload: true);

      event.button.animate(loading: false);
      if (!event.completer.isCompleted) event.completer.complete();

      emit(FormatoNotasSuccessState(formatos: formatos));
    });

    on<RemoveFormatoNotasEvent>((event, emit) async {
      event.button.animate(loading: true);

      await _repository.remove(registro: event.registro);
      List<FormatoNotasModel> formatos = await _repository.fetch(forceReload: true);

      event.button.animate(loading: false);
      if (event.completer.isCompleted == false) event.completer.complete();

      emit(FormatoNotasSuccessState(formatos: formatos));
    });
  }
}
