import 'package:educacao_criativa/get.dart';
import 'package:educacao_criativa/models/modalidade_model.dart';
import 'package:educacao_criativa/screens/estrutura_organizacional/modalidades/bloc/modalidades_event.dart';
import 'package:educacao_criativa/screens/estrutura_organizacional/modalidades/bloc/modalidades_state.dart';
import 'package:educacao_criativa/screens/estrutura_organizacional/modalidades/modalidades_cadastro.dart';
import 'package:educacao_criativa/widgets/custom_data_table/custom_data_cell.dart';
import 'package:educacao_criativa/widgets/custom_data_table/custom_data_row.dart';
import 'package:educacao_criativa/widgets/custom_data_table/custom_data_table.dart';
import 'package:educacao_criativa/widgets/modal/modal.dart';
import 'package:educacao_criativa/widgets/modal/modal_negacao.dart';
import 'package:educacao_criativa/widgets/palette_colors.dart';
import 'package:educacao_criativa/widgets/typography.dart';
import 'package:flutter/material.dart';

Future<void> deletePopUp({required BuildContext context, required ModalidadeModel data}) {
  return Modal.right(
    context: context,
    width: 500,
    body: ModalNegacao(
      mensagem: 'Tem certeza que deseja deletar este registro?',
      descricao: 'Após exclusão, não será possivel utilizar a modalidade ${data.nome ?? ''}',
      onSubmit: (completer, button) {
        modalidadesBloc.add(
          RemoveModalidadesEvent(registro: data, button: button, completer: completer),
        );
      },
    ),
  );
}

class ModalidadesTable extends StatelessWidget {
  const ModalidadesTable({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: modalidadesBloc.stream,
      builder: (context, snapshot) {
        return CustomDataTable(
          isLoading: modalidadesBloc.state.runtimeType == ModalidadesLoadingState,
          isLoaded: modalidadesBloc.state.runtimeType == ModalidadesSuccessState,
          itemCount: modalidadesBloc.state.modalidades.length,
          columns: const [
            CustomDataCell(minWidth: 130, child: TableHeader('NOME')),
            CustomDataCell(minWidth: 130, child: TableHeader('DESCRIÇÃO')),
            CustomDataCell(minWidth: 130, child: TableHeader('CÓDIGO BNCC')),
            CustomDataCell(width: 70, child: TableHeader('')),
            CustomDataCell(width: 70, child: TableHeader('')),
          ],
          rowBuilder: (context, index) {
            var data = modalidadesBloc.state.modalidades[index];

            return CustomDataRow(
              cells: [
                CustomDataCell(minWidth: 130, child: Paragraph(data.nome ?? '')),
                CustomDataCell(minWidth: 130, child: Paragraph(data.descricao ?? '')),
                CustomDataCell(minWidth: 130, child: Paragraph(data.codigoBNCC ?? '')),
                CustomDataCell(
                  width: 70,
                  child: IconButton(
                    onPressed: () => cadastroModalidadePopUp(context: context, initialValue: data),
                    icon: const Icon(Icons.edit),
                  ),
                ),
                CustomDataCell(
                  width: 70,
                  child: IconButton(
                    onPressed: () => deletePopUp(context: context, data: data),
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
