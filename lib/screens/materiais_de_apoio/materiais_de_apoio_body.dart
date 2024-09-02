import 'package:educacao_criativa/get.dart';
import 'package:educacao_criativa/screens/materiais_de_apoio/bloc/materiais_de_apoio_state.dart';
import 'package:educacao_criativa/services/open_new_tab.dart';
import 'package:educacao_criativa/widgets/custom_data_table/custom_data_cell.dart';
import 'package:educacao_criativa/widgets/custom_data_table/custom_data_row.dart';
import 'package:educacao_criativa/widgets/custom_data_table/custom_data_table.dart';
import 'package:educacao_criativa/widgets/palette_colors.dart';
import 'package:educacao_criativa/widgets/typography.dart';
import 'package:flutter/material.dart';

// Future<void> deleteMateriaisDeApoioPopUp({required BuildContext context, required DeficienciaModel data}) {
//   return Modal.right(
//     context: context,
//     width: 500,
//     body: ModalNegacao(
//       mensagem: 'Tem certeza que deseja deletar este registro?',
//       descricao: 'Após exclusão, não será possivel utilizar a deficiencia ${data.tipo ?? ''}',
//       onSubmit: (completer, button) {
//         materiaisDeApoioBloc.add(
//           RemoveDeficienciasEvent(registro: data, button: button, completer: completer),
//         );
//       },
//     ),
//   );
// }

class MateriaisDeApoioBody extends StatelessWidget {
  const MateriaisDeApoioBody({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: materiaisDeApoioBloc.stream,
      builder: (context, snapshot) {
        return CustomDataTable(
          isLoading: materiaisDeApoioBloc.state.runtimeType == MateriaisDeApoioLoadingState,
          isLoaded: materiaisDeApoioBloc.state.runtimeType == MateriaisDeApoioSuccessState,
          itemCount: materiaisDeApoioBloc.state.materiais.length,
          columns: const [
            CustomDataCell(minWidth: 130, child: TableHeader('PERFIL')),
            CustomDataCell(width: 70, child: TableHeader('')),
            CustomDataCell(width: 70, child: TableHeader('')),
            CustomDataCell(width: 70, child: TableHeader('')),
          ],
          rowBuilder: (context, index) {
            var data = materiaisDeApoioBloc.state.materiais[index];
            return CustomDataRow(
              cells: [
                CustomDataCell(minWidth: 130, child: Paragraph(data.nome?.label ?? '')),
                CustomDataCell(
                  width: 70,
                  child: IconButton(
                    // onPressed: () => cadastroDeficienciasPopUp(context: context, initialValue: data),
                    onPressed: () async => await openNewTab(data.url),
                    icon: const Icon(Icons.open_in_browser),
                  ),
                ),
                CustomDataCell(
                  width: 70,
                  child: IconButton(
                    // onPressed: () => cadastroDeficienciasPopUp(context: context, initialValue: data),
                    onPressed: () {},
                    icon: const Icon(Icons.edit),
                  ),
                ),
                CustomDataCell(
                  width: 70,
                  child: IconButton(
                    // onPressed: () => deleteMateriaisDeApoioPopUp(context: context, data: data),
                    onPressed: () {},
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
