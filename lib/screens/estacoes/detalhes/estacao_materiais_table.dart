import 'package:educacao_criativa/models/estacao_item_model.dart';
import 'package:educacao_criativa/screens/estacoes/detalhes/detalhes_bloc/estacao_detalhes_bloc.dart';
import 'package:educacao_criativa/screens/estacoes/detalhes/detalhes_bloc/estacao_detalhes_state.dart';
import 'package:educacao_criativa/widgets/custom_data_table/custom_data_cell.dart';
import 'package:educacao_criativa/widgets/custom_data_table/custom_data_row.dart';
import 'package:educacao_criativa/widgets/custom_data_table/custom_data_table.dart';
import 'package:educacao_criativa/widgets/typography.dart';
import 'package:flutter/material.dart';

class EstacaoMateriaisTable extends StatelessWidget {
  const EstacaoMateriaisTable({super.key, required this.paddingTop, required this.items, required this.bloc});
  final ValueNotifier<double> paddingTop;
  final List<EstacaoModelItem> items;
  final EstacaoDetalhesBloc bloc;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: paddingTop,
      builder: (context, child) {
        return AnimatedPadding(
          duration: const Duration(milliseconds: 300),
          padding: EdgeInsets.only(top: paddingTop.value),
          child: CustomDataTable(
            isLoading: bloc.state.runtimeType == EstacaoDetalhesLoadingState,
            isLoaded: bloc.state.runtimeType == EstacaoDetalhesSuccessState,
            itemCount: items.length,
            columns: const [
              CustomDataCell(width: 350, child: TableHeader('ITEM')),
              CustomDataCell(minWidth: 130, child: TableHeader('DESCRIÇÃO')),
              CustomDataCell(width: 150, child: TableHeader('TIPO')),
              CustomDataCell(width: 130, child: TableHeader('QUANTIDADE')),
              CustomDataCell(width: 130, child: TableHeader('QTD. AVISO')),
              // CustomDataCell(width: 130, child: TableHeader('QTD. MÍNIMA')),
            ],
            rowBuilder: (context, index) {
              var data = items[index];
              return CustomDataRow(
                cells: [
                  CustomDataCell(width: 350, child: Paragraph(data.item?.nome ?? '')),
                  CustomDataCell(minWidth: 130, child: Paragraph(data.item?.descricao ?? '')),
                  CustomDataCell(width: 150, child: Paragraph(data.item?.isConsumivel == true ? 'Consumível' : 'Não consumível')),
                  CustomDataCell(width: 130, child: Paragraph(data.quantidade.toString())),
                  CustomDataCell(width: 130, child: Paragraph(data.quantidadeAviso.toString())),
                  // CustomDataCell(width: 130, child: Paragraph(data.quantidadeMinima.toString())),
                ],
              );
            },
          ),
        );
      },
    );
  }
}
