import 'package:educacao_criativa/models/formato_notas_model.dart';

abstract class FormatoNotasState {
  List<FormatoNotasModel> formatos;

  FormatoNotasState({
    required this.formatos,
  });
}

class FormatoNotasInitialState extends FormatoNotasState {
  FormatoNotasInitialState() : super(formatos: []);
}

class FormatoNotasLoadingState extends FormatoNotasState {
  FormatoNotasLoadingState() : super(formatos: []);
}

class FormatoNotasSuccessState extends FormatoNotasState {
  FormatoNotasSuccessState({required super.formatos});
}
