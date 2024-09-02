import 'package:educacao_criativa/get.dart';
import 'package:educacao_criativa/screens/espacos/bloc/espacos_event.dart';
import 'package:educacao_criativa/screens/espacos/espacos_body.dart';
import 'package:educacao_criativa/screens/espacos/espacos_cadastro.dart';
import 'package:educacao_criativa/widgets/base_layout_page.dart';

import 'package:flutter/material.dart';

class EspacosScreen extends StatelessWidget {
  const EspacosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseLayoutPage(
      title: 'Espaços',
      small: true,
      body: const EspacosBody(),
      scrollController: ScrollController(),
      searchData: (value) async => espacosBloc.add(SearchEspacosEvent(search: value)),
      refreshData: () async => espacosBloc.add(LoadEspacosEvent(forceReload: true)),
      floatingButtonFunction: () => cadastroEspacoPopUp(context: context),
    );
  }
}
