import 'dart:async';
import 'package:educacao_criativa/get.dart';
import 'package:educacao_criativa/models/item_model.dart';
import 'package:educacao_criativa/screens/itens/bloc/itens_event.dart';
import 'package:educacao_criativa/widgets/animated_button/animated_button.dart';
import 'package:educacao_criativa/widgets/animated_button/animated_button_cubit.dart';
import 'package:educacao_criativa/widgets/custom_dropdown.dart';
import 'package:educacao_criativa/widgets/custom_input.dart';
import 'package:educacao_criativa/widgets/modal/modal.dart';
import 'package:educacao_criativa/widgets/palette_colors.dart';
import 'package:educacao_criativa/widgets/size_notifier.dart';
import 'package:educacao_criativa/widgets/typography.dart';
import 'package:flutter/material.dart';

Future<void> cadastroItemPopUp({required BuildContext context, ItemModel? initialValue}) {
  return Modal.right(
    context: context,
    width: 400,
    body: ItemCadastro(initialValue: initialValue),
  );
}

class ItemCadastro extends StatefulWidget {
  final ItemModel? initialValue;

  const ItemCadastro({super.key, this.initialValue});

  @override
  State<ItemCadastro> createState() => _ItemCadastroState();
}

class _ItemCadastroState extends State<ItemCadastro> {
  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _descricaoController = TextEditingController();
  bool _isConsumivel = true;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final Completer completer = Completer();
  final AnimatedButtonCubit button = AnimatedButtonCubit();
  double headerH = 20;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await Future.wait([completer.future]).then((value) {
        if (mounted) Navigator.pop(context, completer.isCompleted);
      });
    });

    _nomeController.text = widget.initialValue?.nome ?? '';
    _descricaoController.text = widget.initialValue?.descricao ?? '';
    _isConsumivel = widget.initialValue?.isConsumivel ?? false;
  }

  @override
  void dispose() {
    _nomeController.dispose();
    _descricaoController.dispose();

    super.dispose();
  }

  void saveData() {
    ItemModel? initialValue = widget.initialValue;

    if (initialValue == null) {
      return itensBloc.add(
        CreateItensEvent(
          completer: completer,
          button: button,
          registro: ItemModel(
            nome: _nomeController.text,
            descricao: _descricaoController.text,
            isConsumivel: _isConsumivel,
          ),
        ),
      );
    } else {
      return itensBloc.add(
        UpdateItensEvent(
          completer: completer,
          button: button,
          registro: initialValue.copyWith(
            nome: _nomeController.text,
            descricao: _descricaoController.text,
            isConsumivel: _isConsumivel,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizeNotifier(
              size: (height, width) {
                if (headerH != height) setState(() => headerH = height);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(
                      Icons.clear,
                      size: 16,
                      color: Colors.deepOrangeAccent,
                    ),
                  )
                ],
              ),
            ),
            Container(
              constraints: BoxConstraints(minHeight: MediaQuery.sizeOf(context).height - headerH),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: LayoutBuilder(builder: (context, constraints) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            contentPadding: const EdgeInsets.symmetric(horizontal: 4),
                            title: H1Small(
                              widget.initialValue == null ? 'NOVO ITEM' : 'EDITAR ITEM',
                            ),
                            subtitle: const Paragraph('Os campos com * são obrigatórios.'),
                          ),
                          const SizedBox(height: 20),
                          Form(
                            key: _formKey,
                            child: Wrap(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(4),
                                  child: CustomInput(
                                    label: 'Nome *',
                                    controller: _nomeController,
                                    keyboardType: TextInputType.text,
                                    onFieldSubmitted: (value) => saveData(),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4),
                                  child: CustomDropdown(
                                    label: 'Tipo *',
                                    value: _isConsumivel ? 'Consumível' : 'Não Consumível',
                                    optionsList: const ['Consumível', 'Não Consumível'],
                                    itemBuilder: (value) => Paragraph(value),
                                    onChanged: (value) {
                                      _isConsumivel = false;
                                      if (value == 'Consumível') _isConsumivel = true;
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4),
                                  child: CustomInput(
                                    label: 'Descrição *',
                                    controller: _descricaoController,
                                    keyboardType: TextInputType.number,
                                    maxLines: null,
                                    minLines: 4,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 32),
                            child: SelectionContainer.disabled(
                              child: Column(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(bottom: 32),
                                    child: Divider(height: 1),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Expanded(
                                        child: ElevatedButton(
                                          onPressed: () => Navigator.of(context).pop(true),
                                          style: const ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.transparent)),
                                          child: const Paragraph(
                                            'Fechar',
                                            color: PaletteColors.primary,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        child: AnimatedButton(
                                          function: () => saveData(),
                                          formKey: _formKey,
                                          cubit: button,
                                          width: 600,
                                          color: PaletteColors.primary,
                                          title: widget.initialValue == null ? 'Cadastrar' : 'Salvar',
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      );
                    }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
