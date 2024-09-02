import 'package:async/async.dart';
import 'package:educacao_criativa/get.dart';
import 'package:educacao_criativa/models/unidade_model.dart';
import 'package:educacao_criativa/screens/unidades/bloc/unidades_event.dart';
import 'package:educacao_criativa/screens/unidades/bloc/unidades_state.dart';
import 'package:educacao_criativa/screens/unidades/unidades_cadastro.dart';
import 'package:educacao_criativa/screens/usuarios/bloc/usuarios_state.dart';
import 'package:educacao_criativa/widgets/custom_data_table/custom_data_cell.dart';
import 'package:educacao_criativa/widgets/custom_data_table/custom_data_row.dart';
import 'package:educacao_criativa/widgets/custom_data_table/custom_data_table.dart';
import 'package:educacao_criativa/widgets/modal/modal.dart';
import 'package:educacao_criativa/widgets/modal/modal_negacao.dart';
import 'package:educacao_criativa/widgets/palette_colors.dart';
import 'package:educacao_criativa/widgets/typography.dart';
import 'package:flutter/material.dart';

Future<void> deleteUnidadePopUp({required BuildContext context, required UnidadeModel data}) {
  return Modal.right(
    context: context,
    width: 500,
    body: ModalNegacao(
      mensagem: 'Tem certeza que deseja deletar este registro?',
      descricao: 'Após exclusão, não será possivel acessar o cadastro da unidade ${data.nome ?? ''}',
      onSubmit: (completer, button) {
        unidadesBloc.add(
          RemoveUnidadesEvent(registro: data, button: button, completer: completer),
        );
      },
    ),
  );
}

class UnidadesBody extends StatelessWidget {
  const UnidadesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: StreamGroup.merge([
        unidadesBloc.stream,
        usuariosBloc.stream,
      ]),
      builder: (context, snapshot) {
        return CustomDataTable(
          isLoading: unidadesBloc.state.runtimeType == UnidadesLoadingState && usuariosBloc.state.runtimeType == UsuariosLoadingState,
          isLoaded: unidadesBloc.state.runtimeType == UnidadesSuccessState && usuariosBloc.state.runtimeType == UsuariosSuccessState,
          itemCount: unidadesBloc.state.unidades.length,
          columns: const [
            CustomDataCell(width: 130, child: TableHeader('TIPO')),
            CustomDataCell(width: 250, child: TableHeader('NOME')),
            CustomDataCell(minWidth: 130, child: TableHeader('ENDEREÇO')),
            CustomDataCell(minWidth: 130, child: TableHeader('DIRETOR')),
            CustomDataCell(width: 70, child: TableHeader('')),
            CustomDataCell(width: 70, child: TableHeader('')),
          ],
          rowBuilder: (context, index) {
            var data = unidadesBloc.state.unidades[index];
            return CustomDataRow(
              cells: [
                CustomDataCell(width: 130, child: Paragraph(data.tipoDeUnidade?.nome ?? '')),
                CustomDataCell(width: 250, child: Paragraph(data.nome ?? '')),
                CustomDataCell(minWidth: 130, child: Paragraph(data.endereco?.endereco ?? '', maxLines: 2)),
                CustomDataCell(
                    minWidth: 130,
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 4.0),
                          child: Icon(Icons.account_circle, size: 18),
                        ),
                        Flexible(child: Paragraph(data.getDiretor?.nome ?? '', maxLines: 2)),
                      ],
                    )),
                CustomDataCell(
                  width: 70,
                  child: IconButton(
                    onPressed: () => cadastroUnidadePopUp(context: context, initialValue: data),
                    icon: const Icon(Icons.edit),
                  ),
                ),
                CustomDataCell(
                  width: 70,
                  child: IconButton(
                    onPressed: () => deleteUnidadePopUp(context: context, data: data),
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
