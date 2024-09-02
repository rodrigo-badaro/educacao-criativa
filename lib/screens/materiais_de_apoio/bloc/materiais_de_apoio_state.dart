import 'package:educacao_criativa/models/material_apoio/material_apoio_model.dart';

abstract class MateriaisDeApoioState {
  List<MaterialApoioModel> materiais;

  MateriaisDeApoioState({
    required this.materiais,
  });
}

class MateriaisDeApoioInitialState extends MateriaisDeApoioState {
  MateriaisDeApoioInitialState() : super(materiais: []);
}

class MateriaisDeApoioLoadingState extends MateriaisDeApoioState {
  MateriaisDeApoioLoadingState() : super(materiais: []);
}

class MateriaisDeApoioSuccessState extends MateriaisDeApoioState {
  MateriaisDeApoioSuccessState({required super.materiais});
}
