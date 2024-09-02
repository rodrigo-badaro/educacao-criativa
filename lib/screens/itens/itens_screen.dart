import 'package:educacao_criativa/get.dart';
import 'package:educacao_criativa/screens/itens/bloc/itens_event.dart';
import 'package:educacao_criativa/screens/itens/item_cadastro.dart';
import 'package:educacao_criativa/screens/itens/itens_body.dart';
import 'package:educacao_criativa/widgets/base_layout_page.dart';
import 'package:flutter/material.dart';

class ItensScreen extends StatelessWidget {
  const ItensScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseLayoutPage(
      title: 'Itens',
      small: true,
      scrollController: ScrollController(),
      body: const ItensBody(),
      searchData: (value) async => itensBloc.add(SearchItensEvent(search: value)),
      refreshData: () async => itensBloc.add(LoadItensEvent(forceReload: true)),
      floatingButtonFunction: () => cadastroItemPopUp(context: context),
    );
  }
}
