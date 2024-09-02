import 'package:educacao_criativa/get.dart';
import 'package:educacao_criativa/screens/formato_de_notas/bloc/formato_notas_event.dart';
import 'package:educacao_criativa/screens/formato_de_notas/formato_de_notas_body.dart';
import 'package:educacao_criativa/screens/formato_de_notas/formato_de_notas_cadastro.dart';
import 'package:educacao_criativa/widgets/base_layout_page.dart';

import 'package:flutter/material.dart';

class FormatoDeNotasScreen extends StatelessWidget {
  const FormatoDeNotasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseLayoutPage(
      title: 'Formato de notas',
      small: true,
      body: const FormatoDeNotasBody(),
      scrollController: ScrollController(),
      searchData: (value) async => formatoNotasBloc.add(SearchFormatoNotasEvent(search: value)),
      refreshData: () async => formatoNotasBloc.add(LoadFormatoNotasEvent(forceReload: true)),
      floatingButtonFunction: () => cadastroFormatoDeNotasPopUp(context: context),
    );
  }
}
