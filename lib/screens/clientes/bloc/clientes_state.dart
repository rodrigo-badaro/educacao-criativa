import 'package:educacao_criativa/models/cliente_model.dart';

abstract class ClientesState {
  List<ClienteModel> clientes;

  ClientesState({
    required this.clientes,
  });
}

class ClientesInitialState extends ClientesState {
  ClientesInitialState() : super(clientes: []);
}

class ClientesLoadingState extends ClientesState {
  ClientesLoadingState() : super(clientes: []);
}

class ClientesSuccessState extends ClientesState {
  ClientesSuccessState({required super.clientes});
}
