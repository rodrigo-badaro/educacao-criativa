import 'package:educacao_criativa/get.dart';
import 'package:educacao_criativa/screens/unidades/bloc/unidades_event.dart';
import 'package:educacao_criativa/screens/unidades/unidades_body.dart';
import 'package:educacao_criativa/screens/unidades/unidades_cadastro.dart';
import 'package:educacao_criativa/widgets/base_layout_page.dart';

import 'package:flutter/material.dart';

class UnidadesScreen extends StatelessWidget {
  const UnidadesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseLayoutPage(
      title: 'Unidades',
      small: true,
      body: const UnidadesBody(),
      scrollController: ScrollController(),
      searchData: (value) async => unidadesBloc.add(SearchUnidadesEvent(search: value)),
      refreshData: () async => unidadesBloc.add(LoadUnidadesEvent(forceReload: true)),
      floatingButtonFunction: () => cadastroUnidadePopUp(context: context),
    );
  }
}
