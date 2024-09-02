import 'dart:async';

import 'package:educacao_criativa/models/estacao_model.dart';
import 'package:educacao_criativa/screens/estacoes/detalhes/detalhes_bloc/estacao_detalhes_bloc.dart';
import 'package:educacao_criativa/screens/estacoes/detalhes/detalhes_bloc/estacao_detalhes_event.dart';
import 'package:educacao_criativa/screens/estacoes/detalhes/detalhes_bloc/estacao_detalhes_state.dart';
import 'package:educacao_criativa/screens/estacoes/detalhes/estacao_detalhes_body.dart';
import 'package:educacao_criativa/screens/estacoes/estacoes_cadastro.dart';
import 'package:educacao_criativa/screens/splash/splash_screen.dart';
import 'package:educacao_criativa/widgets/base_layout_page.dart';
import 'package:educacao_criativa/widgets/modal/modal.dart';
import 'package:educacao_criativa/widgets/modal/modal_negacao.dart';
import 'package:educacao_criativa/widgets/palette_colors.dart';
import 'package:educacao_criativa/widgets/typography.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EstacaoDetalhes extends StatefulWidget {
  const EstacaoDetalhes({super.key, required this.id, required this.paddingTop});
  final ValueNotifier<double> paddingTop;
  final dynamic id;

  @override
  State<EstacaoDetalhes> createState() => _EstacaoDetalhesState();
}

class _EstacaoDetalhesState extends State<EstacaoDetalhes> {
  EstacaoDetalhesBloc detalhesBloc = EstacaoDetalhesBloc();

  final ValueNotifier<double> _paddingTop = ValueNotifier(0.0);
  final ScrollController _scrollController = ScrollController();
  Completer deteleCompleter = Completer();

  @override
  void initState() {
    super.initState();
    if (widget.id != null) detalhesBloc.add(LoadEstacaoDetalhesEvent(id: widget.id));

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await Future.wait([deteleCompleter.future]).then((value) {
        if (mounted) context.go('/estacoes');
      });
    });
  }

  @override
  void didUpdateWidget(covariant EstacaoDetalhes oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.id != null && widget.id != oldWidget.id) {
      detalhesBloc.add(LoadEstacaoDetalhesEvent(id: widget.id));
    }
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<EstacaoDetalhesState>(
      stream: detalhesBloc.stream,
      builder: (context, snapshot) {
        EstacaoModel? data = detalhesBloc.state.estacao;

        switch (data) {
          case != null:
            return BaseLayoutPage(
              title: data.nome ?? '',
              subtitle: data.descricao ?? '',
              small: true,
              scrollController: _scrollController,
              scrollFunction: () {
                if (_scrollController.position.pixels >= 160) {
                  _paddingTop.value = _scrollController.position.pixels - 100;
                } else {
                  _paddingTop.value = 16;
                }
              },
              actionsBottom: [
                IconButton(
                  onPressed: () => cadastroEstacoesPopUp(
                    context: context,
                    initialValue: data,
                    detalhesBloc: detalhesBloc,
                  ),
                  icon: const Icon(Icons.edit),
                ),
                IconButton(
                  onPressed: () => Modal.right(
                    context: context,
                    width: 400,
                    body: ModalNegacao(
                      mensagem: 'Tem certeza?',
                      descricao: 'Após exclusão não será possível criar estações nas unidades a partir deste registro',
                      onSubmit: (completer, button) async {
                        detalhesBloc.add(
                          DeleteEstacaoDetalhesEvent(
                            button: button,
                            completer: deteleCompleter,
                            registro: data,
                          ),
                        );
                      },
                    ),
                  ),
                  icon: const Icon(Icons.delete_forever),
                ),
              ],
              navigate: Row(
                children: [
                  SelectionContainer.disabled(
                    child: InkWell(
                      onTap: () => context.go('/estacoes'),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: TableHeader(
                          'ESTAÇÕES',
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 12),
                    child: Icon(
                      Icons.chevron_right,
                      size: 16,
                      color: PaletteColors.info,
                    ),
                  ),
                  Expanded(
                    child: TableHeader(
                      data.nome?.toUpperCase() ?? '',
                      maxLines: 1,
                    ),
                  ),
                ],
              ),
              body: EstacaoDetalhesBody(
                paddingTop: _paddingTop,
                data: data,
                bloc: detalhesBloc,
              ),
            );
          default:
            return const SplashScreen();
        }
      },
    );
  }
}
