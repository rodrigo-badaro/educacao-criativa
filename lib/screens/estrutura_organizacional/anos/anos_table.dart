import 'package:collection/collection.dart';
import 'package:educacao_criativa/get.dart';
import 'package:educacao_criativa/models/bncc/bncc_code_information/serie_bncc_model.dart';
import 'package:educacao_criativa/models/serie_model.dart';
import 'package:educacao_criativa/screens/estrutura_organizacional/anos/anos_cadastro.dart';
import 'package:educacao_criativa/screens/estrutura_organizacional/anos/bloc/series_event.dart';
import 'package:educacao_criativa/screens/estrutura_organizacional/anos/bloc/series_state.dart';
import 'package:educacao_criativa/widgets/custom_data_table/custom_data_cell.dart';
import 'package:educacao_criativa/widgets/custom_data_table/custom_data_row.dart';
import 'package:educacao_criativa/widgets/custom_data_table/custom_data_table.dart';
import 'package:educacao_criativa/widgets/modal/modal.dart';
import 'package:educacao_criativa/widgets/modal/modal_negacao.dart';
import 'package:educacao_criativa/widgets/palette_colors.dart';
import 'package:educacao_criativa/widgets/typography.dart';
import 'package:flutter/material.dart';

Future<void> deletePopUp({required BuildContext context, required SerieModel data}) {
  return Modal.right(
    context: context,
    width: 500,
    body: ModalNegacao(
      mensagem: 'Tem certeza que deseja deletar este registro?',
      descricao: 'Após exclusão, não será possivel utilizar a serie/ano ${data.nome ?? ''}',
      onSubmit: (completer, button) {
        seriesBloc.add(
          RemoveSeriesEvent(registro: data, button: button, completer: completer),
        );
      },
    ),
  );
}

class AnosTable extends StatelessWidget {
  const AnosTable({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: seriesBloc.stream,
      builder: (context, snapshot) {
        return CustomDataTable(
          isLoading: seriesBloc.state.runtimeType == SeriesLoadingState,
          isLoaded: seriesBloc.state.runtimeType == SeriesSuccessState,
          itemCount: seriesBloc.state.series.length,
          columns: const [
            CustomDataCell(minWidth: 130, child: TableHeader('NOME')),
            CustomDataCell(minWidth: 130, child: TableHeader('MODALIDADE')),
            CustomDataCell(minWidth: 130, child: TableHeader('BNCC')),
            CustomDataCell(width: 70, child: TableHeader('')),
            CustomDataCell(width: 70, child: TableHeader('')),
          ],
          rowBuilder: (context, index) {
            var data = seriesBloc.state.series[index];

            return CustomDataRow(
              cells: [
                CustomDataCell(minWidth: 130, child: Paragraph(data.nome ?? '')),
                CustomDataCell(minWidth: 130, child: Paragraph(data.modalidade?.nome ?? '')),
                CustomDataCell(minWidth: 130, child: Paragraph(SerieBNCC.values.firstWhereOrNull((e) => e.modalidade.code == data.codigoBNCC)?.label ?? '')),
                CustomDataCell(
                  width: 70,
                  child: IconButton(
                    onPressed: () => cadastroAnoPopUp(context: context, initialValue: data),
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
