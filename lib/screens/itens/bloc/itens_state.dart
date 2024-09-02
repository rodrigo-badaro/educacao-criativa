import 'package:educacao_criativa/models/item_model.dart';

abstract class ItensState {
  List<ItemModel> itens;

  ItensState({
    required this.itens,
  });
}

class ItensInitialState extends ItensState {
  ItensInitialState() : super(itens: []);
}

class ItensLoadingState extends ItensState {
  ItensLoadingState() : super(itens: []);
}

class ItensSuccessState extends ItensState {
  ItensSuccessState({required super.itens});
}
