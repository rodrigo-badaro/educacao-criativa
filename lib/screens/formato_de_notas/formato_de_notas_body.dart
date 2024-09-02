import 'package:educacao_criativa/get.dart';
import 'package:educacao_criativa/models/formato_notas_model.dart';
import 'package:educacao_criativa/screens/formato_de_notas/bloc/formato_notas_event.dart';
import 'package:educacao_criativa/screens/formato_de_notas/bloc/formato_notas_state.dart';
import 'package:educacao_criativa/screens/formato_de_notas/formato_de_notas_cadastro.dart';
import 'package:educacao_criativa/widgets/custom_data_table/custom_data_cell.dart';
import 'package:educacao_criativa/widgets/custom_data_table/custom_data_row.dart';
import 'package:educacao_criativa/widgets/custom_data_table/custom_data_table.dart';
import 'package:educacao_criativa/widgets/modal/modal.dart';
import 'package:educacao_criativa/widgets/modal/modal_negacao.dart';
import 'package:educacao_criativa/widgets/palette_colors.dart';
import 'package:educacao_criativa/widgets/typography.dart';
import 'package:flutter/material.dart';

Future<void> deleteFormatoDeNotasPopUp({required BuildContext context, required FormatoNotasModel data}) {
  return Modal.right(
    context: context,
    width: 500,
    body: ModalNegacao(
      mensagem: 'Tem certeza que deseja deletar este registro?',
      descricao: 'Após exclusão, não será possivel utilizar o formato ${data.nome ?? ''}',
      onSubmit: (completer, button) {
        formatoNotasBloc.add(
          RemoveFormatoNotasEvent(registro: data, button: button, completer: completer),
        );
      },
    ),
  );
}

class FormatoDeNotasBody extends StatelessWidget {
  const FormatoDeNotasBody({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: formatoNotasBloc.stream,
      builder: (context, snapshot) {
        return CustomDataTable(
          isLoading: formatoNotasBloc.state.runtimeType == FormatoNotasLoadingState,
          isLoaded: formatoNotasBloc.state.runtimeType == FormatoNotasSuccessState,
          itemCount: formatoNotasBloc.state.formatos.length,
          columns: const [
            CustomDataCell(minWidth: 130, child: TableHeader('NOME')),
            CustomDataCell(minWidth: 130, child: TableHeader('DESCRIÇÃO')),
            CustomDataCell(width: 70, child: TableHeader('')),
            CustomDataCell(width: 70, child: TableHeader('')),
          ],
          rowBuilder: (context, index) {
            var data = formatoNotasBloc.state.formatos[index];
            return CustomDataRow(
              cells: [
                CustomDataCell(minWidth: 130, child: Paragraph(data.nome ?? '')),
                CustomDataCell(minWidth: 130, child: Paragraph(data.descricao ?? '')),
                CustomDataCell(
                  width: 70,
                  child: IconButton(
                    onPressed: () => cadastroFormatoDeNotasPopUp(context: context, initialValue: data),
                    icon: const Icon(Icons.edit),
                  ),
                ),
                CustomDataCell(
                  width: 70,
                  child: IconButton(
                    onPressed: () => deleteFormatoDeNotasPopUp(context: context, data: data),
                    icon: const Icon(Icons.clear, color: PaletteColors.danger),
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
