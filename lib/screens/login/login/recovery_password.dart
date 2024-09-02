import 'package:educacao_criativa/global.dart';
import 'package:educacao_criativa/widgets/animated_button/animated_button.dart';
import 'package:flutter/material.dart';

import '../../../widgets/animated_button/animated_button_cubit.dart';

class RecoveryPassword extends StatefulWidget {
  const RecoveryPassword({super.key});

  @override
  State<RecoveryPassword> createState() => _RecoveryPasswordState();
}

class _RecoveryPasswordState extends State<RecoveryPassword> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final recoveryButton = AnimatedButtonCubit();

  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: Center(
        child: Card(
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              color: Color(0xFFE2E8F0),
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            width: 600,
            padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30, left: 15, right: 15, bottom: 30),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Informe o e-mail para recuperação de senha',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: titleColor,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          controller: _emailController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.email),
                            border: OutlineInputBorder(),
                            hintText: 'E-mail',
                          ),
                          validator: (value) {
                            if (value!.isEmpty || !value.contains('@')) {
                              return "Informe um email válido";
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    height: 70,
                    decoration: const BoxDecoration(
                      color: Color(0xFFF1F5F9),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFFE2E8F0),
                          spreadRadius: 0.1,
                          offset: Offset(0, -1), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    child: SelectionContainer.disabled(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const SizedBox(
                              height: 42,
                              width: 100,
                              child: Center(
                                child: Text(
                                  'Fechar',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          AnimatedButton(
                            title: 'Recuperar',
                            width: 300,
                            cubit: recoveryButton,
                            formKey: _formKey,
                            function: () {
                              //   widget.authBloc.add(RecoveryPasswordAuthEvent(email: _emailController.text));
                              //Navigator.pop(context);
                            },
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
