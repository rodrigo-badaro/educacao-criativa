import 'package:educacao_criativa/get.dart';
import 'package:educacao_criativa/screens/administradores/administradores_body.dart';
import 'package:educacao_criativa/screens/usuarios/bloc/usuarios_event.dart';
import 'package:educacao_criativa/widgets/base_layout_page.dart';
import 'package:flutter/material.dart';

class AdministradoresScreen extends StatelessWidget {
  const AdministradoresScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseLayoutPage(
      title: 'Administradores',
      small: true,
      scrollController: ScrollController(),
      body: const AdministradoresBody(),
      searchData: (value) async => usuariosBloc.add(SearchUsuariosEvent(search: value)),
      refreshData: () async => usuariosBloc.add(LoadUsuariosEvent(forceReload: true)),
    );
  }
}
