import 'package:educacao_criativa/responsive_size.dart';
import 'package:educacao_criativa/widgets/custom_data_table/calcular_largura_colunas.dart';
import 'package:educacao_criativa/widgets/custom_data_table/custom_data_cell.dart';
import 'package:educacao_criativa/widgets/custom_data_table/custom_data_row.dart';
import 'package:educacao_criativa/widgets/custom_data_table/table_sliver_persistent_header_delegate.dart';
import 'package:educacao_criativa/widgets/footer.dart';
import 'package:educacao_criativa/widgets/palette_colors.dart';
import 'package:educacao_criativa/widgets/typography.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:sliver_tools/sliver_tools.dart';

class CustomDataTable extends StatelessWidget {
  const CustomDataTable({
    super.key,
    // required this.sideMenuSize,
    required this.columns,
    required this.isLoading,
    required this.isLoaded,
    required this.itemCount,
    required this.rowBuilder,
    this.showFooter = true,
  });
  final List<CustomDataCell> columns;

  // final double sideMenuSize;
  final bool isLoading;
  final bool isLoaded;
  final int itemCount;
  final bool showFooter;
  final Widget? Function(BuildContext context, int index) rowBuilder;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      var auxColumns = calcularLarguraColunas(
        context: context,
        columns: List.from(columns),
      );
      return Padding(
        padding: const EdgeInsets.only(top: 16),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SizedBox(
            width: auxColumns.map((e) => e.width ?? e.minWidth!).reduce((a, b) => a + b) + 56,
            child: CustomScrollView(
              slivers: [
                SliverPadding(
                  padding: const EdgeInsets.only(top: 24, left: 12, right: 12),
                  sliver: SliverStack(
                    positionedAlignment: Alignment.topLeft,
                    children: [
                      const SliverPositioned.fill(
                        child: Card(),
                      ),
                      SliverPadding(
                        padding: const EdgeInsets.all(16),
                        sliver: MultiSliver(
                          children: [
                            SliverPersistentHeader(
                              pinned: true,
                              delegate: TableSliverPersistentHeaderDelegate(
                                child: CustomDataRow(
                                  header: true,
                                  cells: columns,
                                ),
                              ),
                            ),
                            itemCount == 0 || isLoading
                                ? SliverToBoxAdapter(
                                    child: Padding(
                                      padding: MediaQuery.sizeOf(context).width > ResponsiveSize.sm ? const EdgeInsets.fromLTRB(16, 32, 16, 32) : const EdgeInsets.fromLTRB(4, 32, 4, 32),
                                      child: Row(
                                        mainAxisAlignment: MediaQuery.sizeOf(context).width > ResponsiveSize.md ? MainAxisAlignment.center : MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Visibility(
                                            visible: isLoading || !isLoaded,
                                            child: Padding(
                                              padding: const EdgeInsets.only(right: 8),
                                              child: RepaintBoundary(
                                                child: LoadingAnimationWidget.fourRotatingDots(
                                                  color: PaletteColors.info,
                                                  size: 20,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Visibility(
                                            visible: isLoading,
                                            child: const Paragraph(
                                              'Carregando resultados',
                                              color: PaletteColors.info,
                                            ),
                                          ),
                                          Visibility(
                                            visible: !isLoading && isLoaded,
                                            child: const Paragraph(
                                              'Nenhum registro encontrado',
                                              color: PaletteColors.info,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                : SliverList.separated(
                                    separatorBuilder: (context, index) => SizedBox(
                                      height: 1,
                                      child: Divider(
                                        color: Colors.grey[200],
                                      ),
                                    ),
                                    itemCount: itemCount,
                                    itemBuilder: rowBuilder,
                                  ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                if (showFooter)
                  const SliverToBoxAdapter(
                    child: Footer(),
                  ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
