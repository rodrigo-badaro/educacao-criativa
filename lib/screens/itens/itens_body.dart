import 'package:educacao_criativa/get.dart';
import 'package:educacao_criativa/models/item_model.dart';
import 'package:educacao_criativa/screens/itens/bloc/itens_event.dart';
import 'package:educacao_criativa/screens/itens/bloc/itens_state.dart';
import 'package:educacao_criativa/screens/itens/item_cadastro.dart';
import 'package:educacao_criativa/widgets/custom_chip/chip_model.dart';
import 'package:educacao_criativa/widgets/custom_chip/custom_chip.dart';
import 'package:educacao_criativa/widgets/custom_data_table/custom_data_cell.dart';
import 'package:educacao_criativa/widgets/custom_data_table/custom_data_row.dart';
import 'package:educacao_criativa/widgets/custom_data_table/custom_data_table.dart';
import 'package:educacao_criativa/widgets/modal/modal.dart';
import 'package:educacao_criativa/widgets/modal/modal_negacao.dart';
import 'package:educacao_criativa/widgets/palette_colors.dart';
import 'package:educacao_criativa/widgets/typography.dart';
import 'package:flutter/material.dart';

Future<void> deleteItemPopUp({required BuildContext context, required ItemModel data}) {
  return Modal.right(
    context: context,
    width: 500,
    body: ModalNegacao(
      mensagem: 'Tem certeza que deseja deletar este item?',
      descricao: 'Após exclusão, não será possivel utilizar o item ${data.nome ?? ''} em uma estação',
      onSubmit: (completer, button) {
        itensBloc.add(
          RemoveItensEvent(registro: data, button: button, completer: completer),
        );
      },
    ),
  );
}

class ItensBody extends StatelessWidget {
  const ItensBody({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: itensBloc.stream,
      builder: (context, snapshot) {
        return CustomDataTable(
          isLoading: itensBloc.state.runtimeType == ItensLoadingState,
          isLoaded: itensBloc.state.runtimeType == ItensSuccessState,
          itemCount: itensBloc.state.itens.length,
          columns: const [
            CustomDataCell(width: 130, child: Paragraph('TIPO')),
            CustomDataCell(minWidth: 130, child: TableHeader('NOME')),
            CustomDataCell(minWidth: 130, child: TableHeader('DESCRIÇÃO')),
            CustomDataCell(width: 70, child: TableHeader('')),
            CustomDataCell(width: 70, child: TableHeader('')),
          ],
          rowBuilder: (context, index) {
            var data = itensBloc.state.itens[index];
            return CustomDataRow(
              cells: [
                CustomDataCell(
                  width: 130,
                  child: Wrap(
                    children: [
                      data.isConsumivel == true
                          ? CustomChip(
                              model: ChipModel(title: 'Consumível', type: 'green'),
                            )
                          : CustomChip(
                              model: ChipModel(title: 'Não consumível', type: 'blue'),
                            ),
                    ],
                  ),
                ),
                CustomDataCell(minWidth: 130, child: Paragraph(data.nome ?? '')),
                CustomDataCell(minWidth: 130, child: Paragraph(data.descricao ?? '')),
                CustomDataCell(
                  width: 70,
                  child: IconButton(
                    onPressed: () => cadastroItemPopUp(context: context, initialValue: data),
                    icon: const Icon(Icons.edit),
                  ),
                ),
                CustomDataCell(
                  width: 70,
                  child: IconButton(
                    onPressed: () => deleteItemPopUp(context: context, data: data),
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
