import 'dart:async';

import 'package:educacao_criativa/widgets/palette_colors.dart';
import 'package:educacao_criativa/widgets/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CodeForm extends StatefulWidget {
  const CodeForm({
    super.key,
    required this.code,
    this.afterEndTime,
    required this.startTimer,
    required this.counter,
    required this.minutes,
    required this.seconds,
  });

  final TextEditingController code;
  final Function? afterEndTime;
  final Function() startTimer;
  final ValueNotifier<int> counter;
  final ValueNotifier<int> minutes;
  final ValueNotifier<int> seconds;

  @override
  State<CodeForm> createState() => _CodeFormState();
}

class _CodeFormState extends State<CodeForm> {
  final FocusNode digit01FocusNode = FocusNode();
  final TextEditingController digit01Controller = TextEditingController();
  final TextEditingController digit02Controller = TextEditingController();
  final TextEditingController digit03Controller = TextEditingController();
  final TextEditingController digit04Controller = TextEditingController();
  final TextEditingController digit05Controller = TextEditingController();
  final TextEditingController digit06Controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    widget.startTimer.call();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 12.0),
          child: Paragraph(
            'Foi enviado um código de 6 digitos para o número de telefone informado no cadastro. Caso não tenha recebido, aguarde o tempo zerar e solicite um novo código.',
          ),
        ),
        KeyboardListener(
          focusNode: FocusNode(),
          onKeyEvent: (value) async {
            await Future.delayed(Duration.zero, () {
              if (HardwareKeyboard.instance.isLogicalKeyPressed(LogicalKeyboardKey.backspace)) {
                if (!digit01FocusNode.hasFocus && mounted) {
                  // ignore: use_build_context_synchronously
                  FocusScope.of(context).previousFocus();
                }
              }
            });
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 48,
                  child: TextFormField(
                    focusNode: digit01FocusNode,
                    controller: digit01Controller,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(contentPadding: EdgeInsets.all(10)),
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    onChanged: (value) {
                      if (value.length == 1) FocusScope.of(context).nextFocus();
                    },
                  ),
                ),
                SizedBox(
                  width: 48,
                  child: TextFormField(
                    controller: digit02Controller,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(contentPadding: EdgeInsets.all(10)),
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    onChanged: (value) {
                      widget.code.text = digit01Controller.text + digit02Controller.text + digit03Controller.text + digit04Controller.text + digit05Controller.text + digit06Controller.text;

                      if (value.length == 1) FocusScope.of(context).nextFocus();
                    },
                  ),
                ),
                SizedBox(
                  width: 48,
                  child: TextFormField(
                    controller: digit03Controller,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(contentPadding: EdgeInsets.all(10)),
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    onChanged: (value) {
                      widget.code.text = digit01Controller.text + digit02Controller.text + digit03Controller.text + digit04Controller.text + digit05Controller.text + digit06Controller.text;

                      if (value.length == 1) FocusScope.of(context).nextFocus();
                    },
                  ),
                ),
                SizedBox(
                  width: 48,
                  child: TextFormField(
                    controller: digit04Controller,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(contentPadding: EdgeInsets.all(10)),
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    onChanged: (value) {
                      widget.code.text = digit01Controller.text + digit02Controller.text + digit03Controller.text + digit04Controller.text + digit05Controller.text + digit06Controller.text;

                      if (value.length == 1) FocusScope.of(context).nextFocus();
                    },
                  ),
                ),
                SizedBox(
                  width: 48,
                  child: TextFormField(
                    controller: digit05Controller,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(contentPadding: EdgeInsets.all(10)),
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    onChanged: (value) {
                      widget.code.text = digit01Controller.text + digit02Controller.text + digit03Controller.text + digit04Controller.text + digit05Controller.text + digit06Controller.text;

                      if (value.length == 1) FocusScope.of(context).nextFocus();
                    },
                  ),
                ),
                SizedBox(
                  width: 48,
                  child: TextFormField(
                    controller: digit06Controller,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(contentPadding: EdgeInsets.all(10)),
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    onChanged: (value) {
                      if (value.isNotEmpty) {
                        widget.code.text = digit01Controller.text + digit02Controller.text + digit03Controller.text + digit04Controller.text + digit05Controller.text + digit06Controller.text;
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        ListenableBuilder(
          listenable: widget.counter,
          builder: (context, child) {
            return SelectionContainer.disabled(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: widget.counter.value > 0
                          ? null
                          : () {
                              widget.counter.value = 300;
                              widget.startTimer.call();
                            },
                      child: Paragraph(
                        widget.counter.value == 0 ? 'Reenviar código de autenticação' : 'Reenviar código após ${widget.minutes.value.toString().padLeft(2, '0')}:${widget.seconds.value.toString().padLeft(2, '0')}',
                        color: PaletteColors.danger,
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
