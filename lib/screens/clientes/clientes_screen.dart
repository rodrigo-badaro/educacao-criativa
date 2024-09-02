import 'package:educacao_criativa/get.dart';
import 'package:educacao_criativa/screens/clientes/bloc/clientes_event.dart';
import 'package:educacao_criativa/screens/clientes/clientes_body.dart';
import 'package:educacao_criativa/screens/clientes/clientes_cadastro.dart';
import 'package:educacao_criativa/widgets/base_layout_page.dart';

import 'package:flutter/material.dart';

class ClientesScreen extends StatelessWidget {
  const ClientesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseLayoutPage(
      title: 'Clientes',
      small: true,
      body: const ClientesBody(),
      scrollController: ScrollController(),
      searchData: (value) async => clientesBloc.add(SearchClientesEvent(search: value)),
      refreshData: () async => clientesBloc.add(LoadClientesEvent(forceReload: true)),
      floatingButtonFunction: () => cadastroClientePopUp(context: context),
    );
  }
}
