import 'package:bloc/bloc.dart';
import 'package:educacao_criativa/models/item_model.dart';
import 'package:educacao_criativa/screens/itens/bloc/itens_event.dart';
import 'package:educacao_criativa/screens/itens/bloc/itens_repository.dart';
import 'package:educacao_criativa/screens/itens/bloc/itens_state.dart';

class ItensBloc extends Bloc<ItensEvent, ItensState> {
  final ItensRepository _repository = ItensRepository();

  ItensBloc() : super(ItensInitialState()) {
    on<LoadItensEvent>((event, emit) async {
      List<ItemModel> itens = _repository.data;
      emit(ItensLoadingState());

      if (!_repository.isFetching) itens = await _repository.fetch(forceReload: event.forceReload ?? false);

      emit(ItensSuccessState(itens: itens));
      if (event.completer?.isCompleted == false) event.completer?.complete();
    });

    on<SearchItensEvent>((event, emit) {
      emit(ItensLoadingState());
      List<ItemModel> itens = _repository.pesquisa(event.search);
      emit(ItensSuccessState(itens: itens));
    });

    on<CreateItensEvent>((event, emit) async {
      event.button.animate(loading: true);

      await _repository.create(registro: event.registro);
      List<ItemModel> itens = await _repository.fetch(forceReload: true);

      event.button.animate(loading: false);
      if (!event.completer.isCompleted) event.completer.complete();

      emit(ItensSuccessState(itens: itens));
    });

    on<UpdateItensEvent>((event, emit) async {
      event.button.animate(loading: true);

      await _repository.update(registro: event.registro);
      List<ItemModel> itens = await _repository.fetch(forceReload: true);

      event.button.animate(loading: false);
      if (!event.completer.isCompleted) event.completer.complete();

      emit(ItensSuccessState(itens: itens));
    });

    on<RemoveItensEvent>((event, emit) async {
      event.button.animate(loading: true);

      await _repository.remove(registro: event.registro);
      List<ItemModel> itens = await _repository.fetch(forceReload: true);

      event.button.animate(loading: false);
      if (event.completer.isCompleted == false) event.completer.complete();

      emit(ItensSuccessState(itens: itens));
    });
  }
}
