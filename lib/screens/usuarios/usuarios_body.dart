import 'package:educacao_criativa/get.dart';
import 'package:educacao_criativa/screens/usuarios/bloc/usuarios_state.dart';
import 'package:educacao_criativa/widgets/custom_data_table/custom_data_cell.dart';
import 'package:educacao_criativa/widgets/custom_data_table/custom_data_row.dart';
import 'package:educacao_criativa/widgets/custom_data_table/custom_data_table.dart';

import 'package:educacao_criativa/widgets/palette_colors.dart';
import 'package:educacao_criativa/widgets/typography.dart';
import 'package:flutter/material.dart';

// Future<void> deleteItemPopUp({required BuildContext context, required ItemModel data}) {
//   return Modal.right(
//     context: context,
//     width: 500,
//     body: ModalNegacao(
//       mensagem: 'Tem certeza que deseja deletar este item?',
//       descricao: 'Após exclusão, não será possivel utilizar o item ${data.nome ?? ''} em uma estação',
//       onSubmit: (completer, button) {
//         usuariosBloc.add(
//           RemoveItensEvent(registro: data, button: button, completer: completer),
//         );
//       },
//     ),
//   );
// }

class UsuariosBody extends StatelessWidget {
  const UsuariosBody({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: usuariosBloc.stream,
      builder: (context, snapshot) {
        var users = usuariosBloc.state.usuarios.where((e) => e.isRoot != true).toList();

        return CustomDataTable(
          isLoading: usuariosBloc.state.runtimeType == UsuariosLoadingState,
          isLoaded: usuariosBloc.state.runtimeType == UsuariosSuccessState,
          itemCount: users.length,
          columns: const [
            CustomDataCell(minWidth: 130, child: TableHeader('NOME')),
            CustomDataCell(minWidth: 130, child: TableHeader('PERFIL')),
            CustomDataCell(minWidth: 130, child: TableHeader('CLIENTE')),
            CustomDataCell(minWidth: 130, child: TableHeader('UNIDADE')),
            CustomDataCell(width: 70, child: TableHeader('')),
            CustomDataCell(width: 70, child: TableHeader('')),
          ],
          rowBuilder: (context, index) {
            var data = users[index];
            List<String> perfil = [];

            if (data.masterCliente != null) perfil.add('Cliente');
            if (data.administrador != null) perfil.add('Administrador');
            if (data.pedagogaFagundez != null) perfil.add('Pedagogo Fagundez');
            if (data.diretor != null) perfil.add('Diretor');
            if (data.secretaria != null) perfil.add('Secretaria(o)');
            if (data.pedagoga != null) perfil.add('Pedagoga(o)');
            if (data.professor != null) perfil.add('Professor(a)');
            if (data.aluno != null) perfil.add('Aluno(a)');

            return CustomDataRow(
              cells: [
                CustomDataCell(minWidth: 130, child: Paragraph(data.nome ?? '')),
                CustomDataCell(minWidth: 130, child: Paragraph(perfil.join(', '))),
                CustomDataCell(minWidth: 130, child: Paragraph(data.cliente?.sigla ?? '')),
                CustomDataCell(minWidth: 130, child: Paragraph(data.nome ?? '')),
                CustomDataCell(
                  width: 70,
                  child: IconButton(
                    // onPressed: () => cadastroItemPopUp(context: context, initialValue: data),
                    onPressed: () {},
                    icon: const Icon(Icons.copy),
                  ),
                ),
                CustomDataCell(
                  width: 70,
                  child: IconButton(
                    // onPressed: () => deleteItemPopUp(context: context, data: data),
                    onPressed: () {},
                    icon: const Icon(Icons.restore, color: PaletteColors.danger),
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
