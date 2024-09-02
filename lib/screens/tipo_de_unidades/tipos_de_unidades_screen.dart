import 'package:educacao_criativa/get.dart';
import 'package:educacao_criativa/screens/tipo_de_unidades/bloc/tipo_de_unidades_event.dart';
import 'package:educacao_criativa/screens/tipo_de_unidades/tipos_de_unidades_body.dart';
import 'package:educacao_criativa/screens/tipo_de_unidades/tipos_de_unidades_cadastro.dart';
import 'package:educacao_criativa/widgets/base_layout_page.dart';

import 'package:flutter/material.dart';

class TiposDeUnidadesScreen extends StatelessWidget {
  const TiposDeUnidadesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseLayoutPage(
      title: 'Tipos de unidades',
      small: true,
      body: const TiposDeUnidadesBody(),
      scrollController: ScrollController(),
      searchData: (value) async => tiposDeUnidadesBloc.add(SearchTipoDeUnidadesEvent(search: value)),
      refreshData: () async => tiposDeUnidadesBloc.add(LoadTipoDeUnidadesEvent(forceReload: true)),
      floatingButtonFunction: () => cadastroTipoDeUnidadePopUp(context: context),
    );
  }
}
