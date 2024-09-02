import 'dart:async';
import 'package:brasil_fields/brasil_fields.dart';
import 'package:collection/collection.dart';
import 'package:educacao_criativa/get.dart';
import 'package:educacao_criativa/models/cliente_model.dart';
import 'package:educacao_criativa/models/espaco/espaco_model.dart';
import 'package:educacao_criativa/models/estacao_model.dart';
import 'package:educacao_criativa/models/unidade_model.dart';
import 'package:educacao_criativa/screens/clientes/bloc/clientes_state.dart';
import 'package:educacao_criativa/screens/espacos/bloc/espacos_event.dart';
import 'package:educacao_criativa/screens/estacoes/bloc/estacoes_state.dart';
import 'package:educacao_criativa/screens/unidades/bloc/unidades_state.dart';
import 'package:educacao_criativa/widgets/animated_button/animated_button.dart';
import 'package:educacao_criativa/widgets/animated_button/animated_button_cubit.dart';
import 'package:educacao_criativa/widgets/autocomplete_cidade_estado/autocomplete_cidade_estado.dart';
import 'package:educacao_criativa/widgets/custom_autocomplete/custom_autocomplete.dart';
import 'package:educacao_criativa/widgets/custom_input.dart';
import 'package:educacao_criativa/widgets/modal/modal.dart';
import 'package:educacao_criativa/widgets/palette_colors.dart';
import 'package:educacao_criativa/widgets/size_notifier.dart';
import 'package:educacao_criativa/widgets/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future<void> cadastroEspacoPopUp({required BuildContext context, EspacoModel? initialValue}) {
  return Modal.right(
    context: context,
    width: 600,
    body: EspacosCadastro(initialValue: initialValue),
  );
}

class EspacosCadastro extends StatefulWidget {
  final EspacoModel? initialValue;
  const EspacosCadastro({super.key, this.initialValue});

  @override
  State<EspacosCadastro> createState() => _EspacosCadastroState();
}

class _EspacosCadastroState extends State<EspacosCadastro> {
  ClienteModel? _cliente;
  List<EstacaoModel> estacoes = [];
  List<UnidadeModel> unidades = [];
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
    EspacoModel? initialValue = widget.initialValue;

    if (initialValue == null) {
      return espacosBloc.add(
        CreateEspacosEvent(
          completer: completer,
          button: button,
          registro: EspacoModel(
            nome: _nomeController.text,
          ),
        ),
      );
    } else {
      return espacosBloc.add(
        UpdateEspacosEvent(
          completer: completer,
          button: button,
          registro: initialValue.copyWith(
            nome: _nomeController.text,
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
                              widget.initialValue == null ? 'NOVO ESPAÇO' : 'EDITAR ESPAÇO',
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
                                    controller: _nomeController,
                                    label: 'Nome da sala ou número *',
                                    focusNode: _nomeFocusNode,
                                    onFieldSubmitted: (value) => saveData(),
                                  ),
                                ),
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
                                Visibility(
                                  visible: widget.initialValue == null,
                                  child: Opacity(
                                    opacity: _cliente == null ? 0.8 : 1,
                                    child: IgnorePointer(
                                      ignoring: _cliente == null,
                                      child: Padding(
                                        padding: const EdgeInsets.all(4),
                                        child: StreamBuilder<UnidadesState>(
                                          stream: unidadesBloc.stream,
                                          builder: (context, snapshot) {
                                            return CustomAutocomplete<UnidadeModel>(
                                              label: 'Unidades *',
                                              itemBuilder: (value) => Paragraph(value.nome ?? ''),
                                              displayStringForOption: (option) => option.nome ?? '',
                                              keepValue: false,
                                              onChange: (value) {
                                                var check = unidades.any((e) => e.id == value?.id);
                                                var unidade = value;

                                                if (!check && unidade != null) {
                                                  setState(() {
                                                    unidades.add(unidade);
                                                  });
                                                }
                                              },
                                              optionsBuilder: (value) {
                                                if (value.text.isNotEmpty) {
                                                  var unidades = unidadesBloc.state.unidades.where((UnidadeModel option) {
                                                    bool cliente = option.cliente?.id == _cliente?.id;
                                                    bool nome = option.nome?.toLowerCase().contains(value.text.toLowerCase()) ?? false;
                                                    if (_cliente != null && cliente && nome) return true;
                                                    return false;
                                                  });

                                                  unidades.sorted((a, b) {
                                                    var nomeA = a.nome?.toLowerCase();
                                                    var nomeB = b.nome?.toLowerCase();

                                                    if (nomeA == null && nomeB == null) return 0;
                                                    if (nomeA == null) return 1;
                                                    if (nomeB == null) return -1;

                                                    return nomeA.compareTo(nomeB);
                                                  });

                                                  unidades;

                                                  return unidades;
                                                }

                                                return const Iterable<UnidadeModel>.empty();
                                              },
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Visibility(
                                  visible: unidades.isNotEmpty,
                                  child: Card(
                                    child: Column(
                                      children: [
                                        const ListTile(
                                          contentPadding: EdgeInsets.symmetric(horizontal: 11),
                                          title: TableHeader('Lista de unidades'),
                                          subtitle: Paragraph('Este espaço será copia das estações informadas nesta lista'),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 12.0),
                                          child: ListView.separated(
                                            shrinkWrap: true,
                                            itemCount: unidades.length,
                                            separatorBuilder: (context, index) => const Divider(height: 0, indent: 16, endIndent: 16),
                                            itemBuilder: (context, index) {
                                              return ListTile(
                                                onTap: () {},
                                                title: TableHeader(unidades[index].nome ?? ""),
                                                trailing: IconButton(
                                                  onPressed: () {
                                                    setState(() {
                                                      unidades.removeAt(index);
                                                    });
                                                  },
                                                  icon: const Icon(
                                                    Icons.close,
                                                    size: 16,
                                                  ),
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4),
                                  child: StreamBuilder<EstacoesState>(
                                    stream: estacoesBloc.stream,
                                    builder: (context, snapshot) {
                                      return CustomAutocomplete<EstacaoModel>(
                                        label: 'Estações *',
                                        itemBuilder: (value) => Paragraph(value.nome ?? ''),
                                        displayStringForOption: (option) => option.nome ?? '',
                                        keepValue: false,
                                        onChange: (value) {
                                          var check = estacoes.any((e) => e.id == value?.id);
                                          var estacao = value;

                                          if (!check && estacao != null) {
                                            setState(() {
                                              estacoes.add(estacao);
                                            });
                                          }
                                        },
                                        optionsBuilder: (value) {
                                          if (value.text.isNotEmpty) {
                                            var clientes = estacoesBloc.state.estacoes.where((EstacaoModel option) {
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

                                          return const Iterable<EstacaoModel>.empty();
                                        },
                                      );
                                    },
                                  ),
                                ),
                                Visibility(
                                  visible: estacoes.isNotEmpty,
                                  child: Card(
                                    child: Column(
                                      children: [
                                        const ListTile(
                                          contentPadding: EdgeInsets.symmetric(horizontal: 11),
                                          title: TableHeader('Lista de estações'),
                                          subtitle: Paragraph('Este espaço será copia das estações informadas nesta lista'),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 12.0),
                                          child: ListView.separated(
                                            shrinkWrap: true,
                                            itemCount: estacoes.length,
                                            separatorBuilder: (context, index) => const Divider(height: 0, indent: 16, endIndent: 16),
                                            itemBuilder: (context, index) {
                                              return ListTile(
                                                onTap: () {},
                                                title: TableHeader(estacoes[index].nome ?? ""),
                                                trailing: IconButton(
                                                  onPressed: () {
                                                    setState(() {
                                                      estacoes.removeAt(index);
                                                    });
                                                  },
                                                  icon: const Icon(
                                                    Icons.close,
                                                    size: 16,
                                                  ),
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      ],
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
                                      onChange: (municipio) {},
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
