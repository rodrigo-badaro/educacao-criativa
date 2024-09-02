import 'package:bloc/bloc.dart';
import 'package:educacao_criativa/models/modalidade_model.dart';
import 'package:educacao_criativa/screens/estrutura_organizacional/modalidades/bloc/modalidades_event.dart';
import 'package:educacao_criativa/screens/estrutura_organizacional/modalidades/bloc/modalidades_repository.dart';
import 'package:educacao_criativa/screens/estrutura_organizacional/modalidades/bloc/modalidades_state.dart';

class ModalidadesBloc extends Bloc<ModalidadesEvent, ModalidadesState> {
  final ModalidadesRepository _repository = ModalidadesRepository();

  ModalidadesBloc() : super(ModalidadesInitialState()) {
    on<LoadModalidadesEvent>((event, emit) async {
      List<ModalidadeModel> modalidades = _repository.data;
      emit(ModalidadesLoadingState());

      if (!_repository.isFetching) modalidades = await _repository.fetch(forceReload: event.forceReload ?? false);

      emit(ModalidadesSuccessState(modalidades: modalidades));
      if (event.completer?.isCompleted == false) event.completer?.complete();
    });

    on<SearchModalidadesEvent>((event, emit) {
      emit(ModalidadesLoadingState());
      List<ModalidadeModel> modalidades = _repository.pesquisa(event.search);
      emit(ModalidadesSuccessState(modalidades: modalidades));
    });

    on<CreateModalidadesEvent>((event, emit) async {
      event.button.animate(loading: true);

      await _repository.create(registro: event.registro);
      List<ModalidadeModel> modalidades = await _repository.fetch(forceReload: true);

      event.button.animate(loading: false);
      if (!event.completer.isCompleted) event.completer.complete();

      emit(ModalidadesSuccessState(modalidades: modalidades));
    });

    on<UpdateModalidadesEvent>((event, emit) async {
      event.button.animate(loading: true);

      await _repository.update(registro: event.registro);
      List<ModalidadeModel> modalidades = await _repository.fetch(forceReload: true);

      event.button.animate(loading: false);
      if (!event.completer.isCompleted) event.completer.complete();

      emit(ModalidadesSuccessState(modalidades: modalidades));
    });

    on<RemoveModalidadesEvent>((event, emit) async {
      event.button.animate(loading: true);

      await _repository.remove(registro: event.registro);
      List<ModalidadeModel> modalidades = await _repository.fetch(forceReload: true);

      event.button.animate(loading: false);
      if (event.completer.isCompleted == false) event.completer.complete();

      emit(ModalidadesSuccessState(modalidades: modalidades));
    });
  }
}
