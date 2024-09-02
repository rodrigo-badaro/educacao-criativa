import 'package:educacao_criativa/get.dart';
import 'package:educacao_criativa/models/tipo_de_unidade_model.dart';
import 'package:educacao_criativa/screens/tipo_de_unidades/bloc/tipo_de_unidades_event.dart';
import 'package:educacao_criativa/screens/tipo_de_unidades/bloc/tipo_de_unidades_state.dart';
import 'package:educacao_criativa/screens/tipo_de_unidades/tipos_de_unidades_cadastro.dart';
import 'package:educacao_criativa/widgets/custom_data_table/custom_data_cell.dart';
import 'package:educacao_criativa/widgets/custom_data_table/custom_data_row.dart';
import 'package:educacao_criativa/widgets/custom_data_table/custom_data_table.dart';
import 'package:educacao_criativa/widgets/modal/modal.dart';
import 'package:educacao_criativa/widgets/modal/modal_negacao.dart';
import 'package:educacao_criativa/widgets/palette_colors.dart';
import 'package:educacao_criativa/widgets/typography.dart';
import 'package:flutter/material.dart';

Future<void> deletePopUp({required BuildContext context, required TipoDeUnidadeModel data}) {
  return Modal.right(
    context: context,
    width: 500,
    body: ModalNegacao(
      mensagem: 'Tem certeza que deseja deletar este registro?',
      descricao: 'Após exclusão, não será possivel utilizar o tipo de unidade ${data.nome ?? ''}',
      onSubmit: (completer, button) {
        tiposDeUnidadesBloc.add(
          RemoveTipoDeUnidadesEvent(registro: data, button: button, completer: completer),
        );
      },
    ),
  );
}

class TiposDeUnidadesBody extends StatelessWidget {
  const TiposDeUnidadesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: tiposDeUnidadesBloc.stream,
      builder: (context, snapshot) {
        return CustomDataTable(
          isLoading: tiposDeUnidadesBloc.state.runtimeType == TipoDeUnidadesLoadingState,
          isLoaded: tiposDeUnidadesBloc.state.runtimeType == TipoDeUnidadesSuccessState,
          itemCount: tiposDeUnidadesBloc.state.tiposDeUnidades.length,
          columns: const [
            CustomDataCell(minWidth: 130, child: TableHeader('NOME')),
            CustomDataCell(minWidth: 130, child: TableHeader('DESCRIÇÃO')),
            CustomDataCell(width: 70, child: TableHeader('')),
            CustomDataCell(width: 70, child: TableHeader('')),
          ],
          rowBuilder: (context, index) {
            var data = tiposDeUnidadesBloc.state.tiposDeUnidades[index];

            return CustomDataRow(
              cells: [
                CustomDataCell(minWidth: 130, child: Paragraph(data.nome ?? '')),
                CustomDataCell(minWidth: 130, child: Paragraph(data.descricao ?? '')),
                CustomDataCell(
                  width: 70,
                  child: IconButton(
                    onPressed: () => cadastroTipoDeUnidadePopUp(context: context, initialValue: data),
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
