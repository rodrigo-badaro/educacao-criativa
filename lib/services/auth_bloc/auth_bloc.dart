import 'package:bloc/bloc.dart';
import 'package:educacao_criativa/models/tokens_model.dart';
import 'package:educacao_criativa/models/usuario_model.dart';
import 'package:educacao_criativa/services/auth_bloc/auth_event.dart';
import 'package:educacao_criativa/services/auth_bloc/auth_repository.dart';
import 'package:educacao_criativa/services/auth_bloc/auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _repository = AuthRepository();

  AuthBloc() : super(AuthInitialState(tokens: null)) {
    on<LoginAuthEvent>((event, emit) async {
      event.cubitButton.animate(loading: true);

      final TokensModel? tokens = await _repository.getTokens(
        email: event.email,
        password: event.password,
        keepLogged: event.keeplogged,
      );

      if (tokens == null) {
        event.cubitButton.animate(loading: false);
        return emit(AuthInitialState(tokens: null));
      }

      emit(AuthInitialState(tokens: tokens));

      final UsuarioModel? usuario = await _repository.authCheck();

      if (usuario == null) {
        event.cubitButton.animate(loading: false);
        return emit(AuthInitialState(tokens: null));
      }

      emit(AuthSuccessState(usuario: usuario, tokens: tokens));
      event.cubitButton.animate(loading: false);
    });

    on<CheckAuthEvent>((event, emit) async {
      await _repository.openBox();
      final TokensModel? tokens = _repository.tokens;
      final UsuarioModel? usuario = await _repository.authCheck();

      if (usuario == null || tokens == null) {
        return emit(AuthLogoutState());
      }

      emit(AuthSuccessState(usuario: usuario, tokens: tokens));
      if (event.completer?.isCompleted == false) event.completer?.complete();
    });

    on<LogOutAuthEvent>((event, emit) async {
      await _repository.logOut();

      emit(AuthLogoutState());
    });
  }
}
