import 'package:brasil_fields/brasil_fields.dart';
import 'package:educacao_criativa/responsive_size.dart';
import 'package:educacao_criativa/widgets/animated_button/animated_button.dart';
import 'package:educacao_criativa/widgets/animated_button/animated_button_cubit.dart';
import 'package:educacao_criativa/widgets/custom_input.dart';
import 'package:educacao_criativa/widgets/logo_nome.dart';
import 'package:educacao_criativa/widgets/palette_colors.dart';
import 'package:educacao_criativa/widgets/typography.dart';
import 'package:flutter/material.dart';

class LoginWithEmail extends StatefulWidget {
  const LoginWithEmail({
    super.key,
    required this.pageController,
    required this.emailController,
    required this.passwordController,
    required this.passwordFocusNode,
    required this.onSubmit,
    required this.forgotPassword,
    required this.button,
  });

  final PageController pageController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final FocusNode passwordFocusNode;
  final void Function() onSubmit;
  final void Function() forgotPassword;
  final AnimatedButtonCubit button;

  @override
  State<LoginWithEmail> createState() => _LoginWithEmailState();
}

class _LoginWithEmailState extends State<LoginWithEmail> {
  final GlobalKey<FormState> keyPassword = GlobalKey<FormState>();
  bool password = true;

  String formatEmailOrPhone() {
    String result = widget.emailController.text;

    try {
      if (widget.emailController.text.contains('@')) {
        result = widget.emailController.text;
      } else {
        if (widget.emailController.text.length != 11) {
          result = widget.emailController.text;
        } else {
          result = UtilBrasilFields.obterTelefone(
            widget.emailController.text,
          );
        }
      }
    } catch (e) {
      debugPrint('Ocorreu um erro ao tentar formatar o email/telefone');
    }

    return result;
  }

  @override
  void initState() {
    super.initState();
    widget.passwordFocusNode.requestFocus();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: keyPassword,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(left: MediaQuery.sizeOf(context).width <= ResponsiveSize.lg ? 24 : 54),
            child: LogoNome(
              size: 200,
            ),
          ),
          AnimatedPadding(
            duration: const Duration(milliseconds: 300),
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.sizeOf(context).width <= ResponsiveSize.lg ? 32 : 64,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const H2(
                  'Login',
                  color: PaletteColors.info,
                ),
                SelectionContainer.disabled(
                  child: InkWell(
                    onTap: () {
                      widget.pageController.previousPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOutQuint,
                      );
                    },
                    child: Wrap(
                      // mainAxisSize: MainAxisSize.min,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 4),
                          child: Icon(
                            // widget.emailController.text.contains('@') ? Icons.account_circle : Icons.phone_android,
                            Icons.account_circle,
                            size: 16,
                            color: PaletteColors.info,
                          ),
                        ),
                        Paragraph(
                          formatEmailOrPhone(),
                          color: PaletteColors.info,
                        ),
                        const Paragraph(
                          '. Clique para alterar',
                          color: PaletteColors.primary,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                CustomInput(
                  label: 'Senha',
                  controller: widget.passwordController,
                  focusNode: widget.passwordFocusNode,
                  obscureText: password,
                  onFieldSubmitted: (value) => widget.onSubmit(),
                  actions: [
                    InkWell(
                      onTap: () => setState(() => password = !password),
                      child: SizedBox(
                        height: double.infinity,
                        width: 50,
                        child: Center(
                          child: Icon(
                            password ? Icons.visibility_off : Icons.visibility,
                            color: PaletteColors.info,
                            size: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Informe a senha";
                    }

                    return null;
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SelectionContainer.disabled(
                        child: InkWell(
                          onTap: widget.forgotPassword,
                          child: const Paragraph(
                            'Esqueci a senha',
                            color: PaletteColors.danger,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                SelectionContainer.disabled(
                  child: AnimatedButton(
                    width: MediaQuery.sizeOf(context).width,
                    title: 'Acessar',
                    cubit: widget.button,
                    formKey: keyPassword,
                    color: PaletteColors.primary,
                    function: widget.onSubmit,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
