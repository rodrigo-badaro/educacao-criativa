import 'dart:async';
import 'package:educacao_criativa/widgets/animated_button/animated_button.dart';
import 'package:educacao_criativa/widgets/animated_button/animated_button_cubit.dart';
import 'package:educacao_criativa/widgets/palette_colors.dart';
import 'package:educacao_criativa/widgets/size_notifier.dart';
import 'package:educacao_criativa/widgets/typography.dart';
import 'package:flutter/material.dart';

class ModalAprovacao extends StatefulWidget {
  const ModalAprovacao({
    super.key,
    required this.mensagem,
    required this.descricao,
    required this.onSubmit,
  });

  final String mensagem;
  final String descricao;
  final Function(Completer completer, AnimatedButtonCubit button) onSubmit;

  @override
  State<ModalAprovacao> createState() => _ModalAprovacaoState();
}

class _ModalAprovacaoState extends State<ModalAprovacao> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final button = AnimatedButtonCubit();
  final Completer completer = Completer();

  double headerH = 20;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await Future.wait([completer.future]).then((value) {
        if (mounted) Navigator.pop(context, completer.isCompleted);
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
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
                padding: const EdgeInsets.all(8),
                child: LayoutBuilder(builder: (context, constrains) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      H1Small(
                        widget.mensagem,
                      ),
                      Paragraph(
                        widget.descricao,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 32),
                        child: SelectionContainer.disabled(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: () => Navigator.of(context).pop(true),
                                  style: const ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.transparent)),
                                  child: const Paragraph(
                                    'NÃO',
                                    color: PaletteColors.info,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: AnimatedButton(
                                  function: () => widget.onSubmit(completer, button),
                                  cubit: button,
                                  width: 200,
                                  color: PaletteColors.primary,
                                  title: 'SIM',
                                ),
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
      ),
    );
  }
}
