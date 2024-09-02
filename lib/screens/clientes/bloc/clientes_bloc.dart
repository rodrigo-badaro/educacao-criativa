import 'package:bloc/bloc.dart';
import 'package:educacao_criativa/models/cliente_model.dart';
import 'package:educacao_criativa/screens/clientes/bloc/clientes_event.dart';
import 'package:educacao_criativa/screens/clientes/bloc/clientes_repository.dart';
import 'package:educacao_criativa/screens/clientes/bloc/clientes_state.dart';

class ClientesBloc extends Bloc<ClientesEvent, ClientesState> {
  final ClientesRepository _repository = ClientesRepository();

  ClientesBloc() : super(ClientesInitialState()) {
    on<LoadClientesEvent>((event, emit) async {
      List<ClienteModel> clientes = _repository.data;
      emit(ClientesLoadingState());

      if (!_repository.isFetching) clientes = await _repository.fetch(forceReload: event.forceReload ?? false);

      emit(ClientesSuccessState(clientes: clientes));
      if (event.completer?.isCompleted == false) event.completer?.complete();
    });

    on<SearchClientesEvent>((event, emit) {
      emit(ClientesLoadingState());
      List<ClienteModel> clientes = _repository.pesquisa(event.search);
      emit(ClientesSuccessState(clientes: clientes));
    });

    on<CreateClientesEvent>((event, emit) async {
      event.button.animate(loading: true);

      await _repository.create(registro: event.registro);
      List<ClienteModel> clientes = await _repository.fetch(forceReload: true);

      event.button.animate(loading: false);
      if (!event.completer.isCompleted) event.completer.complete();

      emit(ClientesSuccessState(clientes: clientes));
    });

    on<UpdateClientesEvent>((event, emit) async {
      event.button.animate(loading: true);

      await _repository.update(registro: event.registro);
      List<ClienteModel> clientes = await _repository.fetch(forceReload: true);

      event.button.animate(loading: false);
      if (!event.completer.isCompleted) event.completer.complete();

      emit(ClientesSuccessState(clientes: clientes));
    });

    on<RemoveClientesEvent>((event, emit) async {
      event.button.animate(loading: true);

      await _repository.remove(registro: event.registro);
      List<ClienteModel> clientes = await _repository.fetch(forceReload: true);

      event.button.animate(loading: false);
      if (event.completer.isCompleted == false) event.completer.complete();

      emit(ClientesSuccessState(clientes: clientes));
    });
  }
}
