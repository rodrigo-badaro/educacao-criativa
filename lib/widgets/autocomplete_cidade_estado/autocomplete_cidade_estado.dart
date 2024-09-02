import 'package:collection/collection.dart';
import 'package:educacao_criativa/get.dart';
import 'package:educacao_criativa/widgets/autocomplete_cidade_estado/bloc/autocomplete_cidade_estado_bloc.dart';
import 'package:educacao_criativa/widgets/autocomplete_cidade_estado/bloc/autocomplete_cidade_estado_event.dart';
import 'package:educacao_criativa/widgets/autocomplete_cidade_estado/bloc/autocomplete_cidade_estado_model.dart';
import 'package:educacao_criativa/widgets/autocomplete_cidade_estado/bloc/autocomplete_cidade_estado_state.dart';
import 'package:educacao_criativa/widgets/custom_input.dart';
import 'package:educacao_criativa/widgets/palette_colors.dart';
import 'package:educacao_criativa/widgets/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class AutocompleteCidadeEstado extends StatefulWidget {
  final String? initialValue;
  final String? label;
  final void Function(AutocompleteCidadeEstadoModel municipio)? onChange;
  final String pesquisaPor;
  final void Function()? onFocusChange;

  const AutocompleteCidadeEstado({super.key, this.onChange, required this.pesquisaPor, this.onFocusChange, this.initialValue, required this.label});

  @override
  State<AutocompleteCidadeEstado> createState() => _AutocompleteCidadeEstadoState();
}

class _AutocompleteCidadeEstadoState extends State<AutocompleteCidadeEstado> {
  final AutocompleteCidadeEstadoBloc bloc = getIt<AutocompleteCidadeEstadoBloc>();

  TextEditingValue initialValue = const TextEditingValue();
  TextEditingController textController = TextEditingController();

  String? pesquisa;
  List<AutocompleteCidadeEstadoModel> lista = [];
  AutocompleteCidadeEstadoModel? itemSelecionado;

  double getHeight({required int length}) {
    double height = 200.0;
    // if (length > 1 && length < 4) height = (65.0 * length);
    // if (length > 4) height = 200.0;
    return height;
  }

  void initList() {
    if (widget.pesquisaPor == 'UF') {
      for (AutocompleteCidadeEstadoModel city in bloc.state.cidades) {
        if (!lista.any((element) => element.siglaEstado == city.siglaEstado)) lista.add(city);
      }
    } else {
      lista = bloc.state.cidades;
    }
  }

  @override
  void initState() {
    super.initState();
    if (widget.initialValue != null) initialValue = TextEditingValue(text: widget.initialValue!);

    if (bloc.state.cidades.isEmpty) {
      bloc.add(LoadIBGE(pesquisaPor: widget.pesquisaPor));
    } else {
      initList();
    }

    bloc.stream.listen((event) => initList());
  }

  void onSelect({AutocompleteCidadeEstadoModel? selection}) {
    if (selection != null) {
      textController.text = widget.pesquisaPor == 'UF' ? selection.siglaEstado : '${selection.nome} - ${selection.siglaEstado}';
      if (selection.id != 0 && widget.onChange != null) widget.onChange!.call(selection);
    } else {
      AutocompleteCidadeEstadoModel? selection;
      if (widget.pesquisaPor == 'UF') selection = lista.firstWhereOrNull((AutocompleteCidadeEstadoModel option) => option.siglaEstado.toLowerCase().contains(textController.text.toLowerCase()));
      if (widget.pesquisaPor == 'municipio') selection = lista.firstWhereOrNull((AutocompleteCidadeEstadoModel option) => option.nome.toLowerCase().contains(textController.text.toLowerCase()));

      if (selection != null && selection.id != 0 && widget.onChange != null) {
        textController.text = widget.pesquisaPor == 'UF' ? selection.siglaEstado : '${selection.nome} - ${selection.siglaEstado}';
        widget.onChange!.call(selection);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return StreamBuilder<AutocompleteCidadeEstadoState>(
        stream: bloc.stream,
        builder: (context, snapshot) {
          return Autocomplete<AutocompleteCidadeEstadoModel>(
            initialValue: initialValue,
            displayStringForOption: (option) => widget.pesquisaPor == 'UF' ? option.siglaEstado : '${option.nome} - ${option.siglaEstado}',
            fieldViewBuilder: (context, textEditingController, focusNode, onFieldSubmitted) {
              textController = textEditingController;
              focusNode.addListener(() {
                if (textController.text.isNotEmpty && !focusNode.hasFocus) {
                  onSelect();
                  widget.onFocusChange?.call();
                }
              });
              return CustomInput(
                label: widget.label ?? '-',
                controller: textController,
                focusNode: focusNode,
                onFieldSubmitted: (value) => onSelect(selection: itemSelecionado),
              );
            },
            optionsBuilder: (TextEditingValue textEditingValue) {
              switch (bloc.state) {
                case CitySuccessState _:
                  if (textEditingValue.text != '') {
                    if (widget.pesquisaPor == 'UF') return lista.where((AutocompleteCidadeEstadoModel option) => option.siglaEstado.toLowerCase().contains(textEditingValue.text.toLowerCase())).sorted((a, b) => a.nome.toLowerCase().compareTo(b.nome.toLowerCase()));
                    if (widget.pesquisaPor == 'municipio') return lista.where((AutocompleteCidadeEstadoModel option) => option.nome.toLowerCase().contains(textEditingValue.text.toLowerCase())).sorted((a, b) => a.nome.toLowerCase().compareTo(b.nome.toLowerCase()));
                  }

                  return const Iterable<AutocompleteCidadeEstadoModel>.empty();

                case CityInitialState _:
                case CityLoadState _:
                  if (textEditingValue.text == '') return const Iterable<AutocompleteCidadeEstadoModel>.empty();
                  return [AutocompleteCidadeEstadoModel(id: 0, nome: 'Carregando municípios', estado: '', siglaEstado: '', regiao: '', siglaRegiao: '')];

                default:
                  return const Iterable<AutocompleteCidadeEstadoModel>.empty();
              }
            },
            optionsViewBuilder: (context, onSelected, options) {
              return Align(
                alignment: Alignment.topLeft,
                child: Card(
                  child: SizedBox(
                    width: constraints.maxWidth,
                    height: getHeight(length: options.length),
                    child: ListView.builder(
                      itemCount: options.length,
                      itemBuilder: (context, index) {
                        switch (bloc.state.runtimeType) {
                          case CityInitialState _:
                          case CityLoadState _:
                            return ListTile(
                              leading: LoadingAnimationWidget.fourRotatingDots(color: PaletteColors.menu, size: 20),
                              title: Label(options.elementAt(index).nome),
                              subtitle: const Paragraph('Não deve levar muito tempo'),
                            );

                          default:
                            return Builder(
                              builder: (context) {
                                final bool highlight = AutocompleteHighlightedOption.of(context) == index;
                                if (highlight) {
                                  SchedulerBinding.instance.addPostFrameCallback((Duration timeStamp) {
                                    //  Scrollable.ensureVisible(context, alignment: 0.5);
                                    itemSelecionado = options.elementAt(index);
                                  });
                                }

                                return Container(
                                  color: highlight ? PaletteColors.background : null,
                                  child: ListTile(
                                    onTap: () => onSelected(options.elementAt(index)),
                                    title: TableHeader(widget.pesquisaPor == 'UF' ? options.elementAt(index).siglaEstado : options.elementAt(index).nome),
                                    subtitle: widget.pesquisaPor == 'UF' ? null : Paragraph(options.elementAt(index).siglaEstado),
                                  ),
                                );
                              },
                            );
                        }
                      },
                    ),
                  ),
                ),
              );
            },
            onSelected: (AutocompleteCidadeEstadoModel selection) => onSelect(selection: selection),
          );
        },
      );
    });
  }
}
