import 'package:educacao_criativa/get.dart';
import 'package:educacao_criativa/models/cliente_model.dart';
import 'package:educacao_criativa/screens/clientes/bloc/clientes_event.dart';
import 'package:educacao_criativa/screens/clientes/bloc/clientes_state.dart';
import 'package:educacao_criativa/screens/clientes/clientes_cadastro.dart';
import 'package:educacao_criativa/widgets/custom_data_table/custom_data_cell.dart';
import 'package:educacao_criativa/widgets/custom_data_table/custom_data_row.dart';
import 'package:educacao_criativa/widgets/custom_data_table/custom_data_table.dart';
import 'package:educacao_criativa/widgets/modal/modal.dart';
import 'package:educacao_criativa/widgets/modal/modal_negacao.dart';
import 'package:educacao_criativa/widgets/palette_colors.dart';
import 'package:educacao_criativa/widgets/typography.dart';
import 'package:flutter/material.dart';

Future<void> deleteClientePopUp({required BuildContext context, required ClienteModel data}) {
  return Modal.right(
    context: context,
    width: 500,
    body: ModalNegacao(
      mensagem: 'Tem certeza que deseja deletar este registro?',
      descricao: 'Após exclusão, não será possivel acessar o cadastro do cliente ${data.nome ?? ''}',
      onSubmit: (completer, button) {
        clientesBloc.add(
          RemoveClientesEvent(registro: data, button: button, completer: completer),
        );
      },
    ),
  );
}

class ClientesBody extends StatelessWidget {
  const ClientesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: clientesBloc.stream,
      builder: (context, snapshot) {
        return CustomDataTable(
          isLoading: clientesBloc.state.runtimeType == ClientesLoadingState,
          isLoaded: clientesBloc.state.runtimeType == ClientesSuccessState,
          itemCount: clientesBloc.state.clientes.length,
          columns: const [
            CustomDataCell(minWidth: 130, child: TableHeader('TIPO')),
            CustomDataCell(minWidth: 130, child: TableHeader('SIGLA')),
            CustomDataCell(minWidth: 130, child: TableHeader('DESCRIÇÃO')),
            CustomDataCell(width: 70, child: TableHeader('')),
            CustomDataCell(width: 70, child: TableHeader('')),
          ],
          rowBuilder: (context, index) {
            var data = clientesBloc.state.clientes[index];
            return CustomDataRow(
              cells: [
                CustomDataCell(minWidth: 130, child: Paragraph(data.nome ?? '')),
                CustomDataCell(minWidth: 130, child: Paragraph(data.sigla ?? '')),
                CustomDataCell(minWidth: 130, child: Paragraph(data.descricao ?? '')),
                CustomDataCell(
                  width: 70,
                  child: IconButton(
                    onPressed: () => cadastroClientePopUp(context: context, initialValue: data),
                    icon: const Icon(Icons.edit),
                  ),
                ),
                CustomDataCell(
                  width: 70,
                  child: IconButton(
                    onPressed: () => deleteClientePopUp(context: context, data: data),
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
