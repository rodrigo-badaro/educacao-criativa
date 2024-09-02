import 'package:educacao_criativa/responsive_size.dart';
import 'package:educacao_criativa/widgets/animated_button/animated_button.dart';
import 'package:educacao_criativa/widgets/animated_button/animated_button_cubit.dart';
import 'package:educacao_criativa/widgets/custom_input.dart';
import 'package:educacao_criativa/widgets/logo_nome.dart';
import 'package:educacao_criativa/widgets/palette_colors.dart';
import 'package:educacao_criativa/widgets/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    super.key,
    required this.emailController,
    required this.emailFocusNode,
    required this.button,
    required this.signUp,
    required this.onSubmit,
    required this.loginWithGoogle,
    required this.loginWithMicrosoft,
    required this.keepLoginState,
  });

  final TextEditingController emailController;
  final FocusNode emailFocusNode;
  final ValueNotifier<bool> keepLoginState;
  final AnimatedButtonCubit button;
  final void Function() signUp;
  final void Function() onSubmit;
  final void Function() loginWithGoogle;
  final void Function() loginWithMicrosoft;

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final GlobalKey<FormState> keyEmail = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: keyEmail,
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
                Wrap(
                  children: [
                    const Paragraph('Primeiro acesso? '),
                    SelectionContainer.disabled(
                      child: InkWell(
                        onTap: widget.signUp,
                        child: const Paragraph(
                          'Cadastre-se',
                          color: PaletteColors.primary,
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 48, bottom: 4),
                  child: CustomInput(
                    label: 'E-mail ou Telefone com DDD',
                    controller: widget.emailController,
                    focusNode: widget.emailFocusNode,
                    onFieldSubmitted: (value) => widget.onSubmit(),
                    // validator: (value) {
                    //   final RegExp numericRegex = RegExp(r'^[0-9]+$');
                    //   if (numericRegex.hasMatch(value!) && value.length == 11) return null;
                    //   if (value.contains('@')) return null;

                    //   return "Informe um email válido ou um telefone com DDD";
                    // },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: SelectionContainer.disabled(
                    child: InkWell(
                      onTap: () => widget.keepLoginState.value = !widget.keepLoginState.value,
                      child: ListenableBuilder(
                        listenable: widget.keepLoginState,
                        builder: (context, child) {
                          return Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 20,
                                height: 20,
                                child: Checkbox(
                                  value: widget.keepLoginState.value,
                                  onChanged: (bool? value) => widget.keepLoginState.value = !widget.keepLoginState.value,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: Paragraph('Mantenha-me logado', maxLines: 1),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                SelectionContainer.disabled(
                  child: AnimatedButton(
                    width: MediaQuery.sizeOf(context).width,
                    height: 36,
                    title: 'Login',
                    cubit: widget.button,
                    formKey: keyEmail,
                    color: PaletteColors.primary,
                    function: widget.onSubmit,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 32),
                  child: Row(
                    children: [
                      Expanded(
                          child: Divider(
                        height: 0,
                      )),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: TableHeader('Ou acesse com'),
                      ),
                      Expanded(
                          child: Divider(
                        height: 0,
                      )),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(PaletteColors.background),
                    padding: WidgetStatePropertyAll(EdgeInsets.zero),
                  ),
                  onPressed: () {},
                  child: SizedBox(
                    width: MediaQuery.sizeOf(context).width,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                            'images/icons8-google.svg',
                            width: 24,
                            height: 24,
                          ),
                        ),
                        const Expanded(
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.only(right: 35.0),
                              child: Paragraph(
                                'Google',
                                // color: PaletteColors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(PaletteColors.background),
                    padding: WidgetStatePropertyAll(EdgeInsets.zero),
                  ),
                  onPressed: () {},
                  child: SizedBox(
                    width: MediaQuery.sizeOf(context).width,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                            'images/icons8-microsoft.svg',
                            width: 24,
                            height: 24,
                          ),
                        ),
                        const Expanded(
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.only(right: 35.0),
                              child: Paragraph(
                                'Microsoft',
                                // color: PaletteColors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
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
