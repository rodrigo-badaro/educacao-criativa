import 'package:educacao_criativa/get.dart';
import 'package:educacao_criativa/responsive_size.dart';
import 'package:educacao_criativa/widgets/custom_data_table/custom_data_cell.dart';
import 'package:flutter/material.dart';

List<CustomDataCell> calcularLarguraColunas({required BuildContext context, required List<CustomDataCell> columns}) {
  var maxWidth = MediaQuery.sizeOf(context).width;

  var menu = menuCubit.state.isOpen ? 270 : 70;

  if (MediaQuery.sizeOf(context).width > ResponsiveSize.md) {
    maxWidth = maxWidth - menu - 56;
  } else {
    maxWidth = maxWidth - 56;
  }

  var larguraInformada = <double>[];

  // Coletar a largura informada de cada coluna
  for (var column in columns) {
    var width = column.width;

    if (width != null) {
      larguraInformada.add(width);
    } else {
      larguraInformada.add(column.minWidth ?? 100);
    }
  }

  var totalLarguraInformada = larguraInformada.reduce((a, b) => a + b);

  // Se a largura total informada for menor que a largura máxima disponível
  if (totalLarguraInformada < maxWidth) {
    var larguraCalculada = List<double>.from(larguraInformada);

    double totalSemWidthFixo = columns.where((e) => e.width == null).fold(0.0, (sum, element) {
      double widthValue = element.minWidth!;
      return sum + widthValue;
    });

    var larguraDisponivel = maxWidth - totalLarguraInformada;

    for (var i = 0; i < columns.length; i++) {
      if (columns[i].width == null) {
        var proporcao = larguraCalculada[i] / totalSemWidthFixo;
        var valorAdicional = larguraDisponivel * proporcao;
        larguraCalculada[i] += valorAdicional;

        columns[i] = CustomDataCell(
          minWidth: larguraCalculada[i],
          onSort: columns[i].onSort,
          ascending: columns[i].ascending,
          child: columns[i].child,
        );
      }
    }
    return columns;
  }

  return columns;
}
