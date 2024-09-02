import 'package:educacao_criativa/get.dart';
import 'package:educacao_criativa/models/deficiencia_model.dart';
import 'package:educacao_criativa/screens/deficiencias/bloc/deficiencias_event.dart';
import 'package:educacao_criativa/screens/deficiencias/bloc/deficiencias_state.dart';
import 'package:educacao_criativa/screens/deficiencias/deficiencias_cadastro.dart';
import 'package:educacao_criativa/widgets/custom_data_table/custom_data_cell.dart';
import 'package:educacao_criativa/widgets/custom_data_table/custom_data_row.dart';
import 'package:educacao_criativa/widgets/custom_data_table/custom_data_table.dart';
import 'package:educacao_criativa/widgets/modal/modal.dart';
import 'package:educacao_criativa/widgets/modal/modal_negacao.dart';
import 'package:educacao_criativa/widgets/palette_colors.dart';
import 'package:educacao_criativa/widgets/typography.dart';
import 'package:flutter/material.dart';

Future<void> deleteDeficienciasPopUp({required BuildContext context, required DeficienciaModel data}) {
  return Modal.right(
    context: context,
    width: 500,
    body: ModalNegacao(
      mensagem: 'Tem certeza que deseja deletar este registro?',
      descricao: 'Após exclusão, não será possivel utilizar a deficiencia ${data.tipo ?? ''}',
      onSubmit: (completer, button) {
        deficienciasBloc.add(
          RemoveDeficienciasEvent(registro: data, button: button, completer: completer),
        );
      },
    ),
  );
}

class DeficienciasBody extends StatelessWidget {
  const DeficienciasBody({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: deficienciasBloc.stream,
      builder: (context, snapshot) {
        return CustomDataTable(
          isLoading: deficienciasBloc.state.runtimeType == DeficienciasLoadingState,
          isLoaded: deficienciasBloc.state.runtimeType == DeficienciasSuccessState,
          itemCount: deficienciasBloc.state.deficiencias.length,
          columns: const [
            CustomDataCell(minWidth: 130, child: TableHeader('TIPO')),
            CustomDataCell(minWidth: 130, child: TableHeader('DESCRIÇÃO')),
            CustomDataCell(width: 70, child: TableHeader('')),
            CustomDataCell(width: 70, child: TableHeader('')),
          ],
          rowBuilder: (context, index) {
            var data = deficienciasBloc.state.deficiencias[index];
            return CustomDataRow(
              cells: [
                CustomDataCell(minWidth: 130, child: Paragraph(data.tipo ?? '')),
                CustomDataCell(minWidth: 130, child: Paragraph(data.descricao ?? '')),
                CustomDataCell(
                  width: 70,
                  child: IconButton(
                    onPressed: () => cadastroDeficienciasPopUp(context: context, initialValue: data),
                    icon: const Icon(Icons.edit),
                  ),
                ),
                CustomDataCell(
                  width: 70,
                  child: IconButton(
                    onPressed: () => deleteDeficienciasPopUp(context: context, data: data),
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
