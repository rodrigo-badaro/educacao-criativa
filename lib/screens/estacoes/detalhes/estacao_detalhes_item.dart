import 'package:educacao_criativa/models/estacao_item_model.dart';
import 'package:educacao_criativa/responsive_size.dart';
import 'package:educacao_criativa/widgets/custom_chip/chip_model.dart';
import 'package:educacao_criativa/widgets/custom_chip/custom_chip.dart';
import 'package:educacao_criativa/widgets/custom_input.dart';
import 'package:educacao_criativa/widgets/modal/modal.dart';
import 'package:educacao_criativa/widgets/modal/modal_negacao.dart';
import 'package:educacao_criativa/widgets/size_notifier.dart';
import 'package:educacao_criativa/widgets/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EstacaoDetalhesItem extends StatefulWidget {
  const EstacaoDetalhesItem({super.key, required this.item, this.onUpdateQuantity, this.onRemoveItem});
  final EstacaoModelItem? item;
  final Function(String quantidade, String quantidadeAviso)? onUpdateQuantity;
  final Function()? onRemoveItem;

  @override
  State<EstacaoDetalhesItem> createState() => _EstacaoDetalhesItemState();
}

class _EstacaoDetalhesItemState extends State<EstacaoDetalhesItem> {
  late final TextEditingController qtdController = TextEditingController(text: widget.item?.quantidade.toString());
  late final TextEditingController qtdAvisoController = TextEditingController(text: widget.item?.quantidadeAviso.toString());
  ValueNotifier<double> qtdWidth = ValueNotifier(250);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 24),
      child: LayoutBuilder(builder: (context, constraints) {
        return SizedBox(
          width: constraints.maxWidth,
          child: Wrap(
            alignment: WrapAlignment.spaceBetween,
            runAlignment: WrapAlignment.start,
            crossAxisAlignment: WrapCrossAlignment.start,
            children: [
              ListenableBuilder(
                listenable: qtdWidth,
                builder: (context, child) {
                  return Container(
                    padding: qtdWidth.value == 250 ? const EdgeInsets.only(right: 12) : EdgeInsets.zero,
                    width: qtdWidth.value == 250 ? constraints.maxWidth - qtdWidth.value : constraints.maxWidth,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          isThreeLine: true,
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomChip(
                                model: widget.item?.item?.isConsumivel == true
                                    ? ChipModel(
                                        title: 'Consumível',
                                        type: 'green',
                                      )
                                    : ChipModel(
                                        title: 'Não consumível',
                                        type: 'blue',
                                      ),
                              ),
                              H1Small(widget.item?.item?.nome ?? ''),
                            ],
                          ),
                          subtitle: Paragraph(widget.item?.item?.descricao ?? ''),
                          trailing: IconButton(
                            onPressed: () => Modal.right(
                              context: context,
                              width: 400,
                              body: ModalNegacao(
                                mensagem: 'Tem certeza?',
                                descricao: 'Após exclusão, ele não aparecerá na lista de materiais das estações cadastradas nas escolas',
                                onSubmit: (completer, button) {
                                  completer.complete();
                                  widget.onRemoveItem?.call();
                                },
                              ),
                            ),
                            tooltip: 'Remover item',
                            icon: const Icon(
                              Icons.delete_forever,
                              color: Colors.red,
                            ),
                          ),
                        ),
                        const SizedBox(height: 32),
                      ],
                    ),
                  );
                },
              ),
              SizeNotifier(
                size: (height, width) => qtdWidth.value = width,
                child: SizedBox(
                  width: MediaQuery.sizeOf(context).width <= ResponsiveSize.sm ? MediaQuery.sizeOf(context).width : 250,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              border: Border.all(
                                color: const Color(0XFF3B4752).withOpacity(0.5),
                                width: 0.5,
                              ),
                            ),
                            width: 50,
                            height: 57,
                            child: Center(
                              child: IconButton(
                                onPressed: () {
                                  int value = int.parse(qtdController.text);
                                  if (value > 0) {
                                    setState(() {
                                      qtdController.text = (value - 1).toString();
                                    });

                                    widget.onUpdateQuantity?.call(
                                      qtdController.text,
                                      qtdAvisoController.text,
                                    );
                                  }
                                },
                                icon: const Icon(Icons.remove),
                              ),
                            ),
                          ),
                          Expanded(
                            child: CustomInput(
                              label: 'Quantidade',
                              controller: qtdController,
                              keyboardType: TextInputType.number,
                              fontSize: 14,
                              textAlign: TextAlign.center,
                              fontWeight: FontWeight.bold,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly,
                              ],
                              onChanged: (value) {
                                widget.onUpdateQuantity?.call(
                                  qtdController.text,
                                  qtdAvisoController.text,
                                );
                              },
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              border: Border.all(
                                color: const Color(0XFF3B4752).withOpacity(0.5),
                                width: 0.5,
                              ),
                            ),
                            width: 50,
                            height: 57,
                            child: Center(
                              child: IconButton(
                                onPressed: () {
                                  int value = int.parse(qtdController.text);
                                  setState(() {
                                    qtdController.text = (value + 1).toString();
                                  });

                                  widget.onUpdateQuantity?.call(
                                    qtdController.text,
                                    qtdAvisoController.text,
                                  );
                                },
                                icon: const Icon(Icons.add),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              border: Border.all(
                                color: const Color(0XFF3B4752).withOpacity(0.5),
                                width: 0.5,
                              ),
                            ),
                            width: 50,
                            height: 57,
                            child: Center(
                              child: IconButton(
                                onPressed: () {
                                  int value = int.parse(qtdAvisoController.text);
                                  if (value > 0) {
                                    setState(() {
                                      qtdAvisoController.text = (value - 1).toString();
                                    });

                                    widget.onUpdateQuantity?.call(
                                      qtdController.text,
                                      qtdAvisoController.text,
                                    );
                                  }
                                },
                                icon: const Icon(Icons.remove),
                              ),
                            ),
                          ),
                          Expanded(
                            child: CustomInput(
                              label: 'Quantidade aviso',
                              controller: qtdAvisoController,
                              keyboardType: TextInputType.number,
                              fontSize: 14,
                              textAlign: TextAlign.center,
                              fontWeight: FontWeight.bold,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly,
                              ],
                              onChanged: (value) {
                                widget.onUpdateQuantity?.call(
                                  qtdController.text,
                                  qtdAvisoController.text,
                                );
                              },
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              border: Border.all(
                                color: const Color(0XFF3B4752).withOpacity(0.5),
                                width: 0.5,
                              ),
                            ),
                            width: 50,
                            height: 57,
                            child: Center(
                              child: IconButton(
                                onPressed: () {
                                  int value = int.parse(qtdAvisoController.text);
                                  setState(() {
                                    qtdAvisoController.text = (value + 1).toString();
                                  });

                                  widget.onUpdateQuantity?.call(
                                    qtdController.text,
                                    qtdAvisoController.text,
                                  );
                                },
                                icon: const Icon(Icons.add),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
