import 'package:educacao_criativa/get.dart';
import 'package:educacao_criativa/models/espaco/espaco_model.dart';
import 'package:educacao_criativa/screens/espacos/bloc/espacos_event.dart';
import 'package:educacao_criativa/screens/espacos/bloc/espacos_state.dart';
import 'package:educacao_criativa/screens/espacos/espacos_cadastro.dart';
import 'package:educacao_criativa/widgets/custom_data_table/custom_data_cell.dart';
import 'package:educacao_criativa/widgets/custom_data_table/custom_data_row.dart';
import 'package:educacao_criativa/widgets/custom_data_table/custom_data_table.dart';
import 'package:educacao_criativa/widgets/modal/modal.dart';
import 'package:educacao_criativa/widgets/modal/modal_negacao.dart';
import 'package:educacao_criativa/widgets/palette_colors.dart';
import 'package:educacao_criativa/widgets/typography.dart';
import 'package:flutter/material.dart';

Future<void> deleteEspacoPopUp({required BuildContext context, required EspacoModel data}) {
  return Modal.right(
    context: context,
    width: 500,
    body: ModalNegacao(
      mensagem: 'Tem certeza que deseja deletar este registro?',
      descricao: 'Após exclusão, não será possivel acessar o cadastro do espaço ${data.nome ?? ''}',
      onSubmit: (completer, button) {
        espacosBloc.add(
          RemoveEspacosEvent(registro: data, button: button, completer: completer),
        );
      },
    ),
  );
}

class EspacosBody extends StatelessWidget {
  const EspacosBody({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: espacosBloc.stream,
      builder: (context, snapshot) {
        return CustomDataTable(
          isLoading: espacosBloc.state.runtimeType == EspacosLoadingState,
          isLoaded: espacosBloc.state.runtimeType == EspacosSuccessState,
          itemCount: espacosBloc.state.espacos.length,
          columns: const [
            CustomDataCell(width: 250, child: TableHeader('NOME')),
            CustomDataCell(minWidth: 130, child: TableHeader('CLIENTE')),
            CustomDataCell(minWidth: 130, child: TableHeader('UNIDADE')),
            CustomDataCell(minWidth: 130, child: TableHeader('PROFESSOR')),
            CustomDataCell(width: 70, child: TableHeader('')),
            CustomDataCell(width: 70, child: TableHeader('')),
          ],
          rowBuilder: (context, index) {
            var data = espacosBloc.state.espacos[index];
            return CustomDataRow(
              cells: [
                CustomDataCell(width: 250, child: Paragraph(data.nome ?? '')),
                CustomDataCell(minWidth: 130, child: Paragraph(data.unidade?.cliente?.nome ?? '', maxLines: 2)),
                CustomDataCell(minWidth: 130, child: Paragraph(data.unidade?.nome ?? '', maxLines: 2)),
                CustomDataCell(minWidth: 130, child: Paragraph(data.usuario?.nome ?? '', maxLines: 2)),
                CustomDataCell(
                  width: 70,
                  child: IconButton(
                    onPressed: () => cadastroEspacoPopUp(context: context, initialValue: data),
                    icon: const Icon(Icons.edit),
                  ),
                ),
                CustomDataCell(
                  width: 70,
                  child: IconButton(
                    onPressed: () => deleteEspacoPopUp(context: context, data: data),
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
