import 'package:educacao_criativa/get.dart';
import 'package:educacao_criativa/screens/deficiencias/bloc/deficiencias_event.dart';
import 'package:educacao_criativa/screens/deficiencias/deficiencias_body.dart';
import 'package:educacao_criativa/screens/deficiencias/deficiencias_cadastro.dart';
import 'package:educacao_criativa/widgets/base_layout_page.dart';

import 'package:flutter/material.dart';

class DeficienciasScreen extends StatelessWidget {
  const DeficienciasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseLayoutPage(
      title: 'Deficiencias',
      small: true,
      body: const DeficienciasBody(),
      scrollController: ScrollController(),
      searchData: (value) async => deficienciasBloc.add(SearchDeficienciasEvent(search: value)),
      refreshData: () async => deficienciasBloc.add(LoadDeficienciasEvent(forceReload: true)),
      floatingButtonFunction: () => cadastroDeficienciasPopUp(context: context),
    );
  }
}
