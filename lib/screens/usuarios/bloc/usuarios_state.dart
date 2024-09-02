import 'package:educacao_criativa/models/usuario_model.dart';

abstract class UsuariosState {
  List<UsuarioModel> usuarios;

  UsuariosState({
    required this.usuarios,
  });
}

class UsuariosInitialState extends UsuariosState {
  UsuariosInitialState() : super(usuarios: []);
}

class UsuariosLoadingState extends UsuariosState {
  UsuariosLoadingState() : super(usuarios: []);
}

class UsuariosSuccessState extends UsuariosState {
  UsuariosSuccessState({required super.usuarios});
}
