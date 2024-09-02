import 'dart:async';
import 'package:educacao_criativa/get.dart';
import 'package:educacao_criativa/models/bncc/bncc_code_information/serie_bncc_model.dart';
import 'package:educacao_criativa/models/modalidade_model.dart';
import 'package:educacao_criativa/models/serie_model.dart';
import 'package:educacao_criativa/screens/estrutura_organizacional/anos/bloc/series_event.dart';

import 'package:educacao_criativa/widgets/animated_button/animated_button.dart';
import 'package:educacao_criativa/widgets/animated_button/animated_button_cubit.dart';
import 'package:educacao_criativa/widgets/custom_dropdown.dart';
import 'package:educacao_criativa/widgets/custom_input.dart';
import 'package:educacao_criativa/widgets/modal/modal.dart';
import 'package:educacao_criativa/widgets/palette_colors.dart';
import 'package:educacao_criativa/widgets/size_notifier.dart';
import 'package:educacao_criativa/widgets/typography.dart';
import 'package:flutter/material.dart';

Future<void> cadastroAnoPopUp({required BuildContext context, SerieModel? initialValue}) {
  return Modal.right(
    context: context,
    width: 400,
    body: AnoCadastro(initialValue: initialValue),
  );
}

class AnoCadastro extends StatefulWidget {
  final SerieModel? initialValue;

  const AnoCadastro({super.key, this.initialValue});

  @override
  State<AnoCadastro> createState() => _AnoCadastroState();
}

class _AnoCadastroState extends State<AnoCadastro> {
  final TextEditingController _nomeController = TextEditingController();
  final ValueNotifier<SerieBNCC?> _bnccController = ValueNotifier(null);
  final ValueNotifier<ModalidadeModel?> _modalidadeController = ValueNotifier(null);

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
    _modalidadeController.value = widget.initialValue?.modalidade;
  }

  @override
  void dispose() {
    _nomeController.dispose();

    super.dispose();
  }

  void saveData() {
    SerieModel? initialValue = widget.initialValue;

    if (initialValue == null) {
      return seriesBloc.add(
        CreateSeriesEvent(
          completer: completer,
          button: button,
          registro: SerieModel(
            nome: _nomeController.text,
            modalidade: _modalidadeController.value,
            codigoBNCC: _bnccController.value?.code.toString(),
          ),
        ),
      );
    } else {
      return seriesBloc.add(
        UpdateSeriesEvent(
          completer: completer,
          button: button,
          registro: initialValue.copyWith(
            nome: _nomeController.text,
            modalidade: _modalidadeController.value,
            codigoBNCC: _bnccController.value?.code.toString(),
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
                              widget.initialValue == null ? 'NOVA SERIE/ANO' : 'EDITAR SERIE/ANO',
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
                                  child: ListenableBuilder(
                                    listenable: _modalidadeController,
                                    builder: (context, child) {
                                      return CustomDropdown<ModalidadeModel>(
                                        label: 'Modalidade *',
                                        value: _modalidadeController.value,
                                        optionsList: modalidadesBloc.state.modalidades,
                                        onChanged: (val) => _modalidadeController.value = val,
                                        itemBuilder: (ModalidadeModel value) => Paragraph(value.nome ?? ''),
                                      );
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4),
                                  child: ListenableBuilder(
                                    listenable: _bnccController,
                                    builder: (context, child) {
                                      return CustomDropdown<SerieBNCC>(
                                        label: 'BNCC *',
                                        value: _bnccController.value,
                                        optionsList: SerieBNCC.values.where((e) => e.modalidade.code == _modalidadeController.value?.sigla).toList(),
                                        onChanged: (val) => _bnccController.value = val,
                                        itemBuilder: (SerieBNCC value) => Paragraph(value.label),
                                      );
                                    },
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
