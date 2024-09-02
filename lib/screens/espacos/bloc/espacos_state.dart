import 'package:educacao_criativa/models/espaco/espaco_model.dart';

abstract class EspacosState {
  List<EspacoModel> espacos;

  EspacosState({
    required this.espacos,
  });
}

class EspacosInitialState extends EspacosState {
  EspacosInitialState() : super(espacos: []);
}

class EspacosLoadingState extends EspacosState {
  EspacosLoadingState() : super(espacos: []);
}

class EspacosSuccessState extends EspacosState {
  EspacosSuccessState({required super.espacos});
}
