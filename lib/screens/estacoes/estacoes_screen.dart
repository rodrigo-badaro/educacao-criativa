import 'package:educacao_criativa/get.dart';
import 'package:educacao_criativa/global.dart';
import 'package:educacao_criativa/screens/estacoes/bloc/estacoes_event.dart';
import 'package:educacao_criativa/screens/estacoes/detalhes/estacao_detalhes.dart';
import 'package:educacao_criativa/screens/estacoes/estacoes_body.dart';
import 'package:educacao_criativa/screens/estacoes/estacoes_cadastro.dart';
import 'package:educacao_criativa/widgets/base_layout_page.dart';
import 'package:flutter/material.dart';

class EstacoesScreen extends StatefulWidget {
  const EstacoesScreen({super.key, required this.pageDetalhesController});
  final PageController pageDetalhesController;

  @override
  State<EstacoesScreen> createState() => _EstacoesScreenState();
}

class _EstacoesScreenState extends State<EstacoesScreen> {
  dynamic refID = navigatorKey.currentState?.widget.pages.last.arguments;
  final ValueNotifier<double> _paddingTop = ValueNotifier(0.0);

  @override
  void didUpdateWidget(covariant EstacoesScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    refID = navigatorKey.currentState?.widget.pages.last.arguments;
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      navigatorKey.currentState?.popUntil((route) {
        var initialPage = route.settings.name == '/estacoes' ? 0 : 1;

        widget.pageDetalhesController.jumpToPage(
          initialPage,
        );
        return true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: widget.pageDetalhesController,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        BaseLayoutPage(
          title: 'Estações',
          small: true,
          scrollController: ScrollController(),
          body: EstacoesBody(paddingTop: _paddingTop),
          searchData: (value) async => estacoesBloc.add(SearchEstacoesEvent(search: value)),
          refreshData: () async => estacoesBloc.add(LoadEstacoesEvent(forceReload: true)),
          floatingButtonFunction: () => cadastroEstacoesPopUp(context: context),
        ),
        EstacaoDetalhes(
          id: refID,
          paddingTop: _paddingTop,
        ),
      ],
    );
  }
}
