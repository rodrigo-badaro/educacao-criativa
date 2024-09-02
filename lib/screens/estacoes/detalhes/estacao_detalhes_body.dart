import 'dart:async';

import 'package:educacao_criativa/models/estacao_item_model.dart';
import 'package:educacao_criativa/models/estacao_model.dart';
import 'package:educacao_criativa/responsive_size.dart';
import 'package:educacao_criativa/screens/estacoes/detalhes/detalhes_bloc/estacao_detalhes_bloc.dart';
import 'package:educacao_criativa/screens/estacoes/detalhes/detalhes_bloc/estacao_detalhes_event.dart';
import 'package:educacao_criativa/screens/estacoes/detalhes/estacao_detalhes_item.dart';
import 'package:educacao_criativa/widgets/animated_button/animated_button_cubit.dart';
import 'package:educacao_criativa/widgets/animated_button/animated_floating_button.dart';
import 'package:educacao_criativa/widgets/footer.dart';
import 'package:educacao_criativa/widgets/standard_sliver_persistante_header.dart';
import 'package:educacao_criativa/widgets/typography.dart';
import 'package:flutter/material.dart';
import 'package:sliver_tools/sliver_tools.dart';

class EstacaoDetalhesBody extends StatefulWidget {
  const EstacaoDetalhesBody({super.key, required this.paddingTop, required this.data, required this.bloc});
  final ValueNotifier<double> paddingTop;
  final EstacaoModel? data;
  final EstacaoDetalhesBloc bloc;

  @override
  State<EstacaoDetalhesBody> createState() => _EstacaoDetalhesBodyState();
}

class _EstacaoDetalhesBodyState extends State<EstacaoDetalhesBody> {
  EstacaoModel? _data;
  Completer _future = Completer();
  bool _saveEnable = false;
  final AnimatedButtonCubit _button = AnimatedButtonCubit();

  @override
  void initState() {
    super.initState();
    _data = widget.data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: _saveEnable
          ? AnimatedFloatingButton(
              function: () async {
                var registro = _data;

                if (registro != null) {
                  widget.bloc.add(
                    UpdateEstacaoDetalhesEvent(
                      button: _button,
                      completer: _future,
                      registro: registro,
                    ),
                  );

                  await Future.wait([_future.future]).then((v) {
                    _future = Completer();
                    _saveEnable = false;
                  });
                }
              },
              cubit: _button,
              icon: const Icon(
                Icons.save,
              ),
            )
          : null,
      body: CustomScrollView(
        slivers: [
          SliverStack(
            children: [
              SliverCrossAxisConstrained(
                alignment: -1,
                maxCrossAxisExtent: (MediaQuery.sizeOf(context).width * 0.3),
                child: SliverVisibility(
                  visible: MediaQuery.sizeOf(context).width > ResponsiveSize.md,
                  maintainState: true,
                  sliver: SliverPersistentHeader(
                    pinned: true,
                    delegate: StandardSliverPersistentHeaderDelegate(
                      padding: widget.paddingTop,
                      height: MediaQuery.sizeOf(context).height,
                      child: Padding(
                        padding: EdgeInsets.all(MediaQuery.sizeOf(context).width > ResponsiveSize.md ? 16 : 8),
                        child: const ListTile(
                          contentPadding: EdgeInsets.zero,
                          title: H3('Itens e Materiais'),
                          subtitle: Paragraph('Os itens listados ao lado são os materiais necessários para por em funcionamento esta estação, voce poderá ajustar os itens e quantidades de acordo com sua necessidade.'),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SliverCrossAxisConstrained(
                alignment: 1,
                maxCrossAxisExtent: MediaQuery.sizeOf(context).width > ResponsiveSize.md ? MediaQuery.sizeOf(context).width * 0.7 - 70 : MediaQuery.sizeOf(context).width,
                child: SliverPadding(
                  padding: const EdgeInsets.only(top: 24),
                  sliver: SliverMainAxisGroup(
                    slivers: [
                      if (MediaQuery.sizeOf(context).width < ResponsiveSize.md)
                        const SliverToBoxAdapter(
                          child: Padding(
                            padding: EdgeInsets.all(16),
                            child: ListTile(
                              contentPadding: EdgeInsets.zero,
                              title: H3('Itens e Materiais'),
                              subtitle: Paragraph('Os itens listados abaixo são os materiais necessários para por em funcionamento esta estação, voce poderá ajustar os itens e quantidades de acordo com sua necessidade.'),
                            ),
                          ),
                        ),
                      SliverPadding(
                        padding: EdgeInsets.all(MediaQuery.sizeOf(context).width > ResponsiveSize.md ? 16 : 8),
                        sliver: SliverStack(
                          children: [
                            const SliverPositioned.fill(
                              child: Card(),
                            ),
                            SliverPadding(
                              padding: const EdgeInsets.all(12),
                              sliver: MultiSliver(
                                children: [
                                  const SliverToBoxAdapter(
                                    child: ListTile(
                                      visualDensity: VisualDensity(vertical: -4),
                                      contentPadding: EdgeInsets.symmetric(horizontal: 4),
                                      title: TableHeader('Materiais'),
                                      subtitle: Paragraph(''),
                                    ),
                                  ),
                                  SliverList.separated(
                                    separatorBuilder: (context, index) => const Divider(height: 0),
                                    itemCount: _data?.items?.length ?? 0,
                                    itemBuilder: (context, index) {
                                      return EstacaoDetalhesItem(
                                        item: _data?.items?[index],
                                        onRemoveItem: () {
                                          List<EstacaoModelItem> copyList = List?.from(_data?.items ?? []);
                                          copyList.removeAt(index);

                                          _data = _data?.copyWith(items: copyList);

                                          if (!_saveEnable) setState(() => _saveEnable = true);
                                        },
                                        onUpdateQuantity: (quantidade, quantidadeAviso) {
                                          EstacaoModelItem? entry = _data?.items?[index];
                                          List<EstacaoModelItem> copyList = List?.from(_data?.items ?? []);

                                          if (entry != null) {
                                            copyList[index] = entry.copyWith(
                                              quantidade: int.tryParse(quantidade) ?? 0,
                                              quantidadeAviso: int.tryParse(quantidadeAviso) ?? 0,
                                            );
                                          }

                                          _data = _data?.copyWith(items: copyList);
                                          if (!_saveEnable) setState(() => _saveEnable = true);
                                        },
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SliverToBoxAdapter(
            child: Footer(),
          )
        ],
      ),
    );
  }
}
