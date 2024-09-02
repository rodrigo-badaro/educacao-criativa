import 'package:bloc/bloc.dart';
import 'package:educacao_criativa/models/usuario_model.dart';
import 'package:educacao_criativa/screens/usuarios/bloc/usuarios_event.dart';
import 'package:educacao_criativa/screens/usuarios/bloc/usuarios_repository.dart';
import 'package:educacao_criativa/screens/usuarios/bloc/usuarios_state.dart';

class UsuariosBloc extends Bloc<UsuariosEvent, UsuariosState> {
  final UsuariosRepository _repository = UsuariosRepository();

  UsuariosBloc() : super(UsuariosInitialState()) {
    on<LoadUsuariosEvent>((event, emit) async {
      List<UsuarioModel> usuarios = _repository.data;
      emit(UsuariosLoadingState());

      if (!_repository.isFetching) usuarios = await _repository.fetch(forceReload: event.forceReload ?? false);

      emit(UsuariosSuccessState(usuarios: usuarios));
      if (event.completer?.isCompleted == false) event.completer?.complete();
    });

    on<SearchUsuariosEvent>((event, emit) {
      emit(UsuariosLoadingState());
      List<UsuarioModel> usuarios = _repository.pesquisa(event.search);
      emit(UsuariosSuccessState(usuarios: usuarios));
    });

    on<ResetPasswordUsuariosEvent>((event, emit) async {
      event.button.animate(loading: true);

      await _repository.reset(registro: event.registro);
      List<UsuarioModel> usuarios = await _repository.fetch(forceReload: true);

      event.button.animate(loading: false);
      if (!event.completer.isCompleted) event.completer.complete();

      emit(UsuariosSuccessState(usuarios: usuarios));
    });
  }
}
