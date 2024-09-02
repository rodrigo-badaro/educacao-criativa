import 'dart:async';
import 'package:brasil_fields/brasil_fields.dart';
import 'package:collection/collection.dart';
import 'package:educacao_criativa/get.dart';
import 'package:educacao_criativa/models/cliente_model.dart';
import 'package:educacao_criativa/models/endereco_model.dart';
import 'package:educacao_criativa/models/tipo_de_unidade_model.dart';
import 'package:educacao_criativa/models/unidade_model.dart';
import 'package:educacao_criativa/screens/clientes/bloc/clientes_state.dart';
import 'package:educacao_criativa/screens/tipo_de_unidades/bloc/tipo_de_unidades_state.dart';
import 'package:educacao_criativa/screens/unidades/bloc/unidades_event.dart';
import 'package:educacao_criativa/widgets/animated_button/animated_button.dart';
import 'package:educacao_criativa/widgets/animated_button/animated_button_cubit.dart';
import 'package:educacao_criativa/widgets/autocomplete_cidade_estado/autocomplete_cidade_estado.dart';
import 'package:educacao_criativa/widgets/custom_autocomplete/custom_autocomplete.dart';
import 'package:educacao_criativa/widgets/custom_date_picker.dart';
import 'package:educacao_criativa/widgets/custom_dropdown.dart';
import 'package:educacao_criativa/widgets/custom_input.dart';
import 'package:educacao_criativa/widgets/modal/modal.dart';
import 'package:educacao_criativa/widgets/palette_colors.dart';
import 'package:educacao_criativa/widgets/size_notifier.dart';
import 'package:educacao_criativa/widgets/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future<void> cadastroUnidadePopUp({required BuildContext context, UnidadeModel? initialValue}) {
  return Modal.right(
    context: context,
    width: 600,
    body: UnidadesCadastro(initialValue: initialValue),
  );
}

class UnidadesCadastro extends StatefulWidget {
  final UnidadeModel? initialValue;
  const UnidadesCadastro({super.key, this.initialValue});

  @override
  State<UnidadesCadastro> createState() => _UnidadesCadastroState();
}

class _UnidadesCadastroState extends State<UnidadesCadastro> {
  ClienteModel? _cliente;
  TipoDeUnidadeModel? _tipoDeUnidade;
  DateTime _dataInauguracao = DateTime.now();
  String? _uf;
  String? _municipio;

  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _cepController = TextEditingController();
  final TextEditingController _ruaController = TextEditingController();
  final TextEditingController _numeroController = TextEditingController();
  final TextEditingController _complementoController = TextEditingController();
  final TextEditingController _bairroController = TextEditingController();

  final FocusNode _nomeFocusNode = FocusNode();

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
    _cliente = widget.initialValue?.cliente;
    _tipoDeUnidade = widget.initialValue?.tipoDeUnidade;
    _dataInauguracao = widget.initialValue?.dataInauguracao ?? DateTime.now();

    _cepController.text = widget.initialValue?.endereco?.cep ?? '';
    _ruaController.text = widget.initialValue?.endereco?.rua ?? '';
    _numeroController.text = widget.initialValue?.endereco?.numero ?? '';
    _complementoController.text = widget.initialValue?.endereco?.complemento ?? '';
    _bairroController.text = widget.initialValue?.endereco?.bairro ?? '';

    _uf = widget.initialValue?.endereco?.uf ?? '';
    _municipio = widget.initialValue?.endereco?.municipio ?? '';
  }

  @override
  void dispose() {
    _nomeController.dispose();

    _cepController.dispose();
    _ruaController.dispose();
    _numeroController.dispose();
    _complementoController.dispose();
    _bairroController.dispose();

    super.dispose();
  }

  void saveData() {
    UnidadeModel? initialValue = widget.initialValue;

    if (initialValue == null) {
      return unidadesBloc.add(
        CreateUnidadesEvent(
          completer: completer,
          button: button,
          registro: UnidadeModel(
            cliente: _cliente,
            nome: _nomeController.text,
            tipoDeUnidade: _tipoDeUnidade,
            dataInauguracao: _dataInauguracao,
            endereco: EnderecoModel(
              cep: _cepController.text,
              rua: _ruaController.text,
              numero: _numeroController.text,
              complemento: _complementoController.text,
              bairro: _bairroController.text,
              uf: _uf,
              municipio: _municipio,
            ),
          ),
        ),
      );
    } else {
      return unidadesBloc.add(
        UpdateUnidadesEvent(
          completer: completer,
          button: button,
          registro: initialValue.copyWith(
            nome: _nomeController.text,
            tipoDeUnidade: _tipoDeUnidade,
            dataInauguracao: _dataInauguracao,
            endereco: initialValue.endereco?.copyWith(
              cep: _cepController.text,
              rua: _ruaController.text,
              numero: _numeroController.text,
              complemento: _complementoController.text,
              bairro: _bairroController.text,
              uf: _uf,
              municipio: _municipio,
            ),
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
                              widget.initialValue == null ? 'NOVA UNIDADE' : 'EDITAR UNIDADE',
                            ),
                            subtitle: const Paragraph('Os campos com * são obrigatórios.'),
                          ),
                          const SizedBox(height: 20),
                          Form(
                            key: _formKey,
                            child: Wrap(
                              children: [
                                Visibility(
                                  visible: widget.initialValue == null,
                                  child: Padding(
                                    padding: const EdgeInsets.all(4),
                                    child: StreamBuilder<ClientesState>(
                                      stream: clientesBloc.stream,
                                      builder: (context, snapshot) {
                                        return CustomAutocomplete<ClienteModel>(
                                          label: 'Cliente *',
                                          value: _cliente,
                                          itemBuilder: (value) => Paragraph(value.nome ?? ''),
                                          displayStringForOption: (option) => option.nome ?? '',
                                          onChange: (value) {
                                            if (_cliente != value) setState(() => _cliente = value);
                                            FocusScope.of(context).requestFocus(_nomeFocusNode);
                                          },
                                          optionsBuilder: (value) {
                                            if (value.text.isNotEmpty) {
                                              var clientes = clientesBloc.state.clientes.where((ClienteModel option) {
                                                bool nome = option.nome?.toLowerCase().contains(value.text.toLowerCase()) ?? false;
                                                if (nome) return true;
                                                return false;
                                              });

                                              clientes.sorted((a, b) {
                                                var nomeA = a.nome?.toLowerCase();
                                                var nomeB = b.nome?.toLowerCase();

                                                if (nomeA == null && nomeB == null) return 0;
                                                if (nomeA == null) return 1;
                                                if (nomeB == null) return -1;

                                                return nomeA.compareTo(nomeB);
                                              });

                                              clientes;

                                              return clientes;
                                            }

                                            return const Iterable<ClienteModel>.empty();
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4),
                                  child: CustomInput(
                                    controller: _nomeController,
                                    label: 'Nome oficial *',
                                    focusNode: _nomeFocusNode,
                                    onFieldSubmitted: (value) => saveData(),
                                  ),
                                ),
                                SizedBox(
                                  width: constraints.maxWidth.floor() > 530 ? constraints.maxWidth.floor() * 0.6 : constraints.maxWidth,
                                  child: Padding(
                                    padding: const EdgeInsets.all(4),
                                    child: StreamBuilder<TipoDeUnidadesState>(
                                      stream: tiposDeUnidadesBloc.stream,
                                      builder: (context, snapshot) {
                                        return CustomDropdown<TipoDeUnidadeModel>(
                                          label: 'Tipo de Unidade *',
                                          value: _tipoDeUnidade,
                                          optionsList: tiposDeUnidadesBloc.state.tiposDeUnidades,
                                          itemBuilder: (value) => Paragraph(value.nome ?? ''),
                                          onChanged: (value) {
                                            if (_tipoDeUnidade != value) setState(() => _tipoDeUnidade = value);
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: constraints.maxWidth.floor() > 530 ? constraints.maxWidth.floor() * 0.4 : constraints.maxWidth,
                                  child: Padding(
                                    padding: const EdgeInsets.all(4),
                                    child: CustomDatePicker(
                                      initialDate: _dataInauguracao,
                                      label: 'Data de inauguração *',
                                      onChange: (date) {
                                        setState(() => _dataInauguracao = date ?? DateTime.now());
                                      },
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 12.0),
                                  child: ListTile(
                                    contentPadding: EdgeInsets.symmetric(horizontal: 4),
                                    title: TableHeader('Endereço'),
                                    subtitle: Paragraph('Onde a unidade está localizada.'),
                                  ),
                                ),
                                SizedBox(
                                  width: constraints.maxWidth.floor() > 530 ? constraints.maxWidth.floor() * 0.2 : constraints.maxWidth,
                                  child: Padding(
                                    padding: const EdgeInsets.all(4),
                                    child: CustomInput(
                                      label: 'CEP *',
                                      controller: _cepController,
                                      keyboardType: TextInputType.number,
                                      inputFormatters: [
                                        FilteringTextInputFormatter.digitsOnly,
                                        CepInputFormatter(),
                                      ],
                                      onFieldSubmitted: (value) => saveData(),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: constraints.maxWidth.floor() > 530 ? constraints.maxWidth.floor() * 0.8 : constraints.maxWidth,
                                  child: Padding(
                                    padding: const EdgeInsets.all(4),
                                    child: CustomInput(
                                      label: 'Rua *',
                                      controller: _ruaController,
                                      onFieldSubmitted: (value) => saveData(),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: constraints.maxWidth.floor() > 530 ? constraints.maxWidth.floor() * 0.3 : constraints.maxWidth,
                                  child: Padding(
                                    padding: const EdgeInsets.all(4),
                                    child: CustomInput(
                                      label: 'Numero *',
                                      controller: _numeroController,
                                      keyboardType: TextInputType.text,
                                      onFieldSubmitted: (value) => saveData(),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: constraints.maxWidth.floor() > 530 ? constraints.maxWidth.floor() * 0.7 : constraints.maxWidth,
                                  child: Padding(
                                    padding: const EdgeInsets.all(4),
                                    child: CustomInput(
                                      label: 'Complemento *',
                                      controller: _complementoController,
                                      onFieldSubmitted: (value) => saveData(),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: constraints.maxWidth.floor() > 530 ? constraints.maxWidth.floor() * 0.5 : constraints.maxWidth,
                                  child: Padding(
                                    padding: const EdgeInsets.all(4),
                                    child: CustomInput(
                                      label: 'Bairro *',
                                      controller: _bairroController,
                                      onFieldSubmitted: (value) => saveData(),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: constraints.maxWidth.floor() > 530 ? constraints.maxWidth.floor() * 0.5 : constraints.maxWidth,
                                  child: Padding(
                                    padding: const EdgeInsets.all(4),
                                    child: AutocompleteCidadeEstado(
                                      pesquisaPor: 'municipio',
                                      label: 'Cidade - UF',
                                      onChange: (municipio) {
                                        _uf = municipio.siglaEstado;
                                        _municipio = municipio.nome;
                                      },
                                    ),
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
