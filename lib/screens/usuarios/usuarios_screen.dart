import 'package:educacao_criativa/get.dart';
import 'package:educacao_criativa/screens/usuarios/bloc/usuarios_event.dart';
import 'package:educacao_criativa/screens/usuarios/usuarios_body.dart';
import 'package:educacao_criativa/widgets/base_layout_page.dart';
import 'package:flutter/material.dart';

class UsuariosScreen extends StatelessWidget {
  const UsuariosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseLayoutPage(
      title: 'Usuários',
      small: true,
      scrollController: ScrollController(),
      body: const UsuariosBody(),
      searchData: (value) async => usuariosBloc.add(SearchUsuariosEvent(search: value)),
      refreshData: () async => usuariosBloc.add(LoadUsuariosEvent(forceReload: true)),
    );
  }
}
