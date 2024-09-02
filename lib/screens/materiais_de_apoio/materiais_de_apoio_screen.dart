import 'package:educacao_criativa/get.dart';
import 'package:educacao_criativa/screens/materiais_de_apoio/bloc/materiais_de_apoio_event.dart';
import 'package:educacao_criativa/screens/materiais_de_apoio/materiais_de_apoio_body.dart';
import 'package:educacao_criativa/widgets/base_layout_page.dart';
import 'package:flutter/material.dart';

class MateriaisDeApoioScreen extends StatelessWidget {
  const MateriaisDeApoioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseLayoutPage(
      title: 'Materiais de apoio',
      small: true,
      scrollController: ScrollController(),
      body: const MateriaisDeApoioBody(),
      searchData: (value) async => materiaisDeApoioBloc.add(SearchMateriaisDeApoioEvent(search: value)),
      refreshData: () async => materiaisDeApoioBloc.add(LoadMateriaisDeApoioEvent(forceReload: true)),
    );
  }
}
