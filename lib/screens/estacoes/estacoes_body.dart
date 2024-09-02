import 'package:educacao_criativa/get.dart';
import 'package:educacao_criativa/models/estacao_model.dart';
import 'package:educacao_criativa/screens/estacoes/bloc/estacoes_event.dart';
import 'package:educacao_criativa/screens/estacoes/bloc/estacoes_state.dart';
import 'package:educacao_criativa/widgets/custom_data_table/custom_data_cell.dart';
import 'package:educacao_criativa/widgets/custom_data_table/custom_data_row.dart';
import 'package:educacao_criativa/widgets/custom_data_table/custom_data_table.dart';
import 'package:educacao_criativa/widgets/modal/modal.dart';
import 'package:educacao_criativa/widgets/modal/modal_negacao.dart';
import 'package:educacao_criativa/widgets/palette_colors.dart';
import 'package:educacao_criativa/widgets/typography.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

Future<void> deleteEstacoesPopUp({required BuildContext context, required EstacaoModel data}) {
  return Modal.right(
    context: context,
    width: 500,
    body: ModalNegacao(
      mensagem: 'Tem certeza que deseja deletar este registro?',
      descricao: 'Após exclusão, não será possivel utilizar a estação ${data.nome ?? ''}',
      onSubmit: (completer, button) {
        estacoesBloc.add(
          RemoveEstacoesEvent(registro: data, button: button, completer: completer),
        );
      },
    ),
  );
}

class EstacoesBody extends StatelessWidget {
  const EstacoesBody({super.key, required this.paddingTop});
  final ValueNotifier<double> paddingTop;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: paddingTop,
      builder: (context, child) {
        return AnimatedPadding(
          duration: const Duration(milliseconds: 300),
          padding: EdgeInsets.only(top: paddingTop.value),
          child: StreamBuilder(
            stream: estacoesBloc.stream,
            builder: (context, snapshot) {
              return CustomDataTable(
                isLoading: estacoesBloc.state.runtimeType == EstacoesLoadingState,
                isLoaded: estacoesBloc.state.runtimeType == EstacoesSuccessState,
                itemCount: estacoesBloc.state.estacoes.length,
                columns: const [
                  CustomDataCell(minWidth: 130, child: TableHeader('NOME')),
                  CustomDataCell(minWidth: 130, child: TableHeader('DESCRIÇÃO')),
                  CustomDataCell(width: 130, child: TableHeader('QTD. ITENS')),
                  CustomDataCell(width: 130, child: TableHeader('')),
                ],
                rowBuilder: (context, index) {
                  var data = estacoesBloc.state.estacoes[index];
                  return CustomDataRow(
                    cells: [
                      CustomDataCell(minWidth: 130, child: Paragraph(data.nome ?? '')),
                      CustomDataCell(minWidth: 130, child: Paragraph(data.descricao ?? '')),
                      CustomDataCell(width: 130, child: Paragraph(data.items?.length.toString() ?? '0')),
                      CustomDataCell(
                        width: 130,
                        child: ElevatedButton(
                          onPressed: () => context.go('/estacoes/${data.id}'),
                          style: const ButtonStyle(backgroundColor: WidgetStatePropertyAll(PaletteColors.info)),
                          child: const Paragraph(
                            'Detalhar',
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              );
            },
          ),
        );
      },
    );
  }
}
