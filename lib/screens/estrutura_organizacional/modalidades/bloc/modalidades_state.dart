import 'package:educacao_criativa/models/modalidade_model.dart';

abstract class ModalidadesState {
  List<ModalidadeModel> modalidades;

  ModalidadesState({
    required this.modalidades,
  });
}

class ModalidadesInitialState extends ModalidadesState {
  ModalidadesInitialState() : super(modalidades: []);
}

class ModalidadesLoadingState extends ModalidadesState {
  ModalidadesLoadingState() : super(modalidades: []);
}

class ModalidadesSuccessState extends ModalidadesState {
  ModalidadesSuccessState({required super.modalidades});
}
