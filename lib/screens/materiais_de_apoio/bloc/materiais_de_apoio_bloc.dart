import 'package:bloc/bloc.dart';
import 'package:educacao_criativa/models/material_apoio/material_apoio_model.dart';
import 'package:educacao_criativa/screens/materiais_de_apoio/bloc/materiais_de_apoio_event.dart';
import 'package:educacao_criativa/screens/materiais_de_apoio/bloc/materiais_de_apoio_repository.dart';
import 'package:educacao_criativa/screens/materiais_de_apoio/bloc/materiais_de_apoio_state.dart';

class MateriaisDeApoioBloc extends Bloc<MateriaisDeApoioEvent, MateriaisDeApoioState> {
  final MateriaisDeApoioRepository _repository = MateriaisDeApoioRepository();

  MateriaisDeApoioBloc() : super(MateriaisDeApoioInitialState()) {
    on<LoadMateriaisDeApoioEvent>((event, emit) async {
      List<MaterialApoioModel> materiais = _repository.data;
      emit(MateriaisDeApoioLoadingState());

      if (!_repository.isFetching) materiais = await _repository.fetch(forceReload: event.forceReload ?? false);

      emit(MateriaisDeApoioSuccessState(materiais: materiais));
      if (event.completer?.isCompleted == false) event.completer?.complete();
    });

    on<SearchMateriaisDeApoioEvent>((event, emit) {
      emit(MateriaisDeApoioLoadingState());
      List<MaterialApoioModel> materiais = _repository.pesquisa(event.search);
      emit(MateriaisDeApoioSuccessState(materiais: materiais));
    });
  }
}
