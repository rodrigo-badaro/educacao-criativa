import 'package:educacao_criativa/models/tokens_model.dart';
import 'package:educacao_criativa/models/usuario_model.dart';

abstract class AuthState {
  UsuarioModel? usuario;
  TokensModel? tokens;

  AuthState({required this.usuario, required this.tokens});
}

class AuthInitialState extends AuthState {
  AuthInitialState({required super.tokens}) : super(usuario: null);
}

class AuthSuccessState extends AuthState {
  AuthSuccessState({required UsuarioModel usuario, required TokensModel tokens}) : super(usuario: usuario, tokens: tokens);
}

class AuthLogoutState extends AuthState {
  AuthLogoutState() : super(usuario: null, tokens: null);
}
