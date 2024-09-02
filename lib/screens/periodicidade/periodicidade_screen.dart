import 'package:educacao_criativa/get.dart';
import 'package:educacao_criativa/screens/periodicidade/bloc/periodicidade_event.dart';
import 'package:educacao_criativa/screens/periodicidade/periodicidade_body.dart';
import 'package:educacao_criativa/screens/periodicidade/periodicidade_cadastro.dart';
import 'package:educacao_criativa/widgets/base_layout_page.dart';

import 'package:flutter/material.dart';

class PeriodicidadeScreen extends StatelessWidget {
  const PeriodicidadeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseLayoutPage(
      title: 'Periodicidade',
      small: true,
      body: const PeriodicidadeBody(),
      scrollController: ScrollController(),
      searchData: (value) async => periodicidadeBloc.add(SearchPeriodicidadeEvent(search: value)),
      refreshData: () async => periodicidadeBloc.add(LoadPeriodicidadeEvent(forceReload: true)),
      floatingButtonFunction: () => cadastroPeriodicidadePopUp(context: context),
    );
  }
}
