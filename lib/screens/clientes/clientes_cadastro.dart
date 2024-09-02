import 'dart:async';
import 'package:brasil_fields/brasil_fields.dart';
import 'package:educacao_criativa/get.dart';
import 'package:educacao_criativa/models/cliente_model.dart';
import 'package:educacao_criativa/models/telefone_model.dart';
import 'package:educacao_criativa/screens/clientes/bloc/clientes_event.dart';
import 'package:educacao_criativa/widgets/animated_button/animated_button.dart';
import 'package:educacao_criativa/widgets/animated_button/animated_button_cubit.dart';
import 'package:educacao_criativa/widgets/custom_input.dart';
import 'package:educacao_criativa/widgets/modal/modal.dart';
import 'package:educacao_criativa/widgets/palette_colors.dart';
import 'package:educacao_criativa/widgets/size_notifier.dart';
import 'package:educacao_criativa/widgets/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future<void> cadastroClientePopUp({required BuildContext context, ClienteModel? initialValue}) {
  return Modal.right(
    context: context,
    width: 600,
    body: ClientesCadastro(initialValue: initialValue),
  );
}

class ClientesCadastro extends StatefulWidget {
  final ClienteModel? initialValue;

  const ClientesCadastro({super.key, this.initialValue});

  @override
  State<ClientesCadastro> createState() => _ClientesCadastroState();
}

class _ClientesCadastroState extends State<ClientesCadastro> {
  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _descricaoController = TextEditingController();
  final TextEditingController _siglaController = TextEditingController();

  final TextEditingController _nomeResponsavelController = TextEditingController();
  final TextEditingController _cpfResponsavelController = TextEditingController();
  final TextEditingController _emailResponsavelController = TextEditingController();
  final TextEditingController _telefoneResponsavelController = TextEditingController();

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
    _siglaController.text = widget.initialValue?.sigla ?? '';
    _descricaoController.text = widget.initialValue?.descricao ?? '';
  }

  @override
  void dispose() {
    _nomeController.dispose();
    _descricaoController.dispose();
    _nomeResponsavelController.dispose();
    _cpfResponsavelController.dispose();
    _emailResponsavelController.dispose();
    _telefoneResponsavelController.dispose();

    super.dispose();
  }

  void saveData() {
    ClienteModel? initialValue = widget.initialValue;

    if (initialValue == null) {
      String cpf = _cpfResponsavelController.text.replaceAll('.', '').replaceAll('-', '');
      return clientesBloc.add(
        CreateClientesEvent(
          completer: completer,
          button: button,
          registro: ClienteModel(
            nome: _nomeController.text,
            descricao: _descricaoController.text,
            sigla: _siglaController.text,
            nomeResponsavel: _nomeResponsavelController.text,
            cpf: cpf,
            email: _emailResponsavelController.text,
            telefone: TelefoneModel(
              numero: _telefoneResponsavelController.text,
            ),
          ),
        ),
      );
    } else {
      return clientesBloc.add(
        UpdateClientesEvent(
          completer: completer,
          button: button,
          registro: initialValue.copyWith(
            nome: _nomeController.text,
            descricao: _descricaoController.text,
            sigla: _siglaController.text,
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
                              widget.initialValue == null ? 'NOVO CLIENTE' : 'EDITAR CLIENTE',
                            ),
                            subtitle: const Paragraph('Os campos com * são obrigatórios.'),
                          ),
                          const SizedBox(height: 20),
                          Form(
                            key: _formKey,
                            child: Wrap(
                              children: [
                                SizedBox(
                                  width: constraints.maxWidth.floor() > 530 ? constraints.maxWidth.floor() * 0.6 : constraints.maxWidth,
                                  child: Padding(
                                    padding: const EdgeInsets.all(4),
                                    child: CustomInput(
                                      label: 'Nome *',
                                      controller: _nomeController,
                                      keyboardType: TextInputType.text,
                                      onFieldSubmitted: (value) => saveData(),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: constraints.maxWidth.floor() > 530 ? constraints.maxWidth.floor() * 0.4 : constraints.maxWidth,
                                  child: Padding(
                                    padding: const EdgeInsets.all(4),
                                    child: CustomInput(
                                      label: 'Sigla *',
                                      controller: _siglaController,
                                      keyboardType: TextInputType.text,
                                      onFieldSubmitted: (value) => saveData(),
                                    ),
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
                                Visibility(
                                  visible: widget.initialValue == null,
                                  child: Wrap(
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(top: 12.0),
                                        child: ListTile(
                                          contentPadding: EdgeInsets.symmetric(horizontal: 4),
                                          title: TableHeader('Informe um responsável'),
                                          subtitle: Paragraph('O usuário informado será responsável pelos dados cadastrados neste cliente.'),
                                        ),
                                      ),
                                      SizedBox(
                                        width: constraints.maxWidth.floor() > 530 ? constraints.maxWidth.floor() * 0.6 : constraints.maxWidth,
                                        child: Padding(
                                          padding: const EdgeInsets.all(4),
                                          child: CustomInput(
                                            label: 'Nome completo *',
                                            controller: _nomeResponsavelController,
                                            keyboardType: TextInputType.text,
                                            onFieldSubmitted: (value) => saveData(),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: constraints.maxWidth.floor() > 530 ? constraints.maxWidth.floor() * 0.4 : constraints.maxWidth,
                                        child: Padding(
                                          padding: const EdgeInsets.all(4),
                                          child: CustomInput(
                                            label: 'CPF *',
                                            controller: _cpfResponsavelController,
                                            keyboardType: TextInputType.number,
                                            inputFormatters: [
                                              FilteringTextInputFormatter.digitsOnly,
                                              CpfInputFormatter(),
                                            ],
                                            onFieldSubmitted: (value) => saveData(),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: constraints.maxWidth.floor() > 530 ? constraints.maxWidth.floor() * 0.7 : constraints.maxWidth,
                                        child: Padding(
                                          padding: const EdgeInsets.all(4),
                                          child: CustomInput(
                                            label: 'Email *',
                                            controller: _emailResponsavelController,
                                            keyboardType: TextInputType.text,
                                            onFieldSubmitted: (value) => saveData(),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: constraints.maxWidth.floor() > 530 ? constraints.maxWidth.floor() * 0.3 : constraints.maxWidth,
                                        child: Padding(
                                          padding: const EdgeInsets.all(4),
                                          child: CustomInput(
                                            label: 'Telefone *',
                                            controller: _telefoneResponsavelController,
                                            keyboardType: TextInputType.number,
                                            inputFormatters: [
                                              FilteringTextInputFormatter.digitsOnly,
                                              TelefoneInputFormatter(),
                                            ],
                                            onFieldSubmitted: (value) => saveData(),
                                          ),
                                        ),
                                      ),
                                    ],
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
