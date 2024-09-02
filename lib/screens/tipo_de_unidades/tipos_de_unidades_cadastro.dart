import 'dart:async';
import 'package:educacao_criativa/get.dart';
import 'package:educacao_criativa/models/tipo_de_unidade_model.dart';
import 'package:educacao_criativa/screens/tipo_de_unidades/bloc/tipo_de_unidades_event.dart';
import 'package:educacao_criativa/widgets/animated_button/animated_button.dart';
import 'package:educacao_criativa/widgets/animated_button/animated_button_cubit.dart';
import 'package:educacao_criativa/widgets/custom_input.dart';
import 'package:educacao_criativa/widgets/modal/modal.dart';
import 'package:educacao_criativa/widgets/palette_colors.dart';
import 'package:educacao_criativa/widgets/size_notifier.dart';
import 'package:educacao_criativa/widgets/typography.dart';
import 'package:flutter/material.dart';

Future<void> cadastroTipoDeUnidadePopUp({required BuildContext context, TipoDeUnidadeModel? initialValue}) {
  return Modal.right(
    context: context,
    width: 400,
    body: TiposDeUnidadesCadastro(initialValue: initialValue),
  );
}

class TiposDeUnidadesCadastro extends StatefulWidget {
  final TipoDeUnidadeModel? initialValue;

  const TiposDeUnidadesCadastro({super.key, this.initialValue});

  @override
  State<TiposDeUnidadesCadastro> createState() => _TiposDeUnidadesCadastroState();
}

class _TiposDeUnidadesCadastroState extends State<TiposDeUnidadesCadastro> {
  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _descricaoController = TextEditingController();

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
  }

  @override
  void dispose() {
    _nomeController.dispose();
    _descricaoController.dispose();

    super.dispose();
  }

  void saveData() {
    TipoDeUnidadeModel? initialValue = widget.initialValue;

    if (initialValue == null) {
      return tiposDeUnidadesBloc.add(
        CreateTipoDeUnidadesEvent(
          completer: completer,
          button: button,
          registro: TipoDeUnidadeModel(
            nome: _nomeController.text,
            descricao: _descricaoController.text,
          ),
        ),
      );
    } else {
      return tiposDeUnidadesBloc.add(
        UpdateTipoDeUnidadesEvent(
          completer: completer,
          button: button,
          registro: initialValue.copyWith(
            nome: _nomeController.text,
            descricao: _descricaoController.text,
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
                              widget.initialValue == null ? 'NOVO TIPO DE UNIDADE' : 'EDITAR TIPO DE UNIDADE',
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
