import 'package:educacao_criativa/widgets/custom_data_table/calcular_largura_colunas.dart';
import 'package:educacao_criativa/widgets/custom_data_table/custom_data_cell.dart';
import 'package:educacao_criativa/widgets/palette_colors.dart';
import 'package:flutter/material.dart';

class CustomDataRow extends StatelessWidget {
  const CustomDataRow({
    this.header = false,
    required this.cells,
    this.color = Colors.transparent,
    this.onTap,
    super.key,
  });

  final List<CustomDataCell> cells;

  final Color color;
  final bool header;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    var columns = calcularLarguraColunas(
      context: context,
      columns: cells.isNotEmpty ? List.from(cells) : [],
    );

    var cellsWidths = columns.map((e) => e.width ?? e.minWidth!).toList();

    return Container(
      color: color,
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          mouseCursor: MouseCursor.defer,
          onTap: header ? null : onTap ?? () {},
          hoverColor: PaletteColors.primary.withOpacity(0.1),
          child: SizedBox(
            width: cellsWidths.reduce((a, b) => a + b),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: List.generate(
                cells.length,
                (index) => SizedBox(
                  width: cellsWidths[index],
                  child: cells[index],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
