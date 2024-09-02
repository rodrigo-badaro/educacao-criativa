import 'package:educacao_criativa/get.dart';
import 'package:educacao_criativa/models/periodicidade_model.dart';
import 'package:educacao_criativa/screens/periodicidade/bloc/periodicidade_event.dart';
import 'package:educacao_criativa/screens/periodicidade/bloc/periodicidade_state.dart';
import 'package:educacao_criativa/screens/periodicidade/periodicidade_cadastro.dart';
import 'package:educacao_criativa/widgets/custom_data_table/custom_data_cell.dart';
import 'package:educacao_criativa/widgets/custom_data_table/custom_data_row.dart';
import 'package:educacao_criativa/widgets/custom_data_table/custom_data_table.dart';
import 'package:educacao_criativa/widgets/modal/modal.dart';
import 'package:educacao_criativa/widgets/modal/modal_negacao.dart';
import 'package:educacao_criativa/widgets/palette_colors.dart';
import 'package:educacao_criativa/widgets/typography.dart';
import 'package:flutter/material.dart';

Future<void> deletePeriodicidadePopUp({required BuildContext context, required PeriodicidadeModel data}) {
  return Modal.right(
    context: context,
    width: 500,
    body: ModalNegacao(
      mensagem: 'Tem certeza que deseja deletar este registro?',
      descricao: 'Após exclusão, não será possivel utilizar a periodicidade ${data.nome ?? ''}',
      onSubmit: (completer, button) {
        periodicidadeBloc.add(
          RemovePeriodicidadeEvent(registro: data, button: button, completer: completer),
        );
      },
    ),
  );
}

class PeriodicidadeBody extends StatelessWidget {
  const PeriodicidadeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: periodicidadeBloc.stream,
      builder: (context, snapshot) {
        return CustomDataTable(
          isLoading: periodicidadeBloc.state.runtimeType == PeriodicidadeLoadingState,
          isLoaded: periodicidadeBloc.state.runtimeType == PeriodicidadeSuccessState,
          itemCount: periodicidadeBloc.state.periodicidades.length,
          columns: const [
            CustomDataCell(minWidth: 130, child: TableHeader('NOME')),
            CustomDataCell(minWidth: 130, child: TableHeader('DESCRIÇÃO')),
            CustomDataCell(width: 70, child: TableHeader('')),
            CustomDataCell(width: 70, child: TableHeader('')),
          ],
          rowBuilder: (context, index) {
            var data = periodicidadeBloc.state.periodicidades[index];
            return CustomDataRow(
              cells: [
                CustomDataCell(minWidth: 130, child: Paragraph(data.nome ?? '')),
                CustomDataCell(minWidth: 130, child: Paragraph(data.descricao ?? '')),
                CustomDataCell(
                  width: 70,
                  child: IconButton(
                    onPressed: () => cadastroPeriodicidadePopUp(context: context, initialValue: data),
                    icon: const Icon(Icons.edit),
                  ),
                ),
                CustomDataCell(
                  width: 70,
                  child: IconButton(
                    onPressed: () => deletePeriodicidadePopUp(context: context, data: data),
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
