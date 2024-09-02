import 'package:brasil_fields/brasil_fields.dart';
import 'package:educacao_criativa/responsive_size.dart';
import 'package:educacao_criativa/screens/login/login/login_with_number/code_form.dart';
import 'package:educacao_criativa/widgets/animated_button/animated_button.dart';
import 'package:educacao_criativa/widgets/animated_button/animated_button_cubit.dart';
import 'package:educacao_criativa/widgets/logo.dart';
import 'package:educacao_criativa/widgets/palette_colors.dart';
import 'package:educacao_criativa/widgets/typography.dart';
import 'package:flutter/material.dart';

class LoginWithNumber extends StatefulWidget {
  const LoginWithNumber({
    super.key,
    required this.pageController,
    required this.emailController,
    required this.codeController,
    required this.startTimer,
    required this.counter,
    required this.minutes,
    required this.seconds,
    required this.button,
    required this.onSubmit,
  });

  final PageController pageController;
  final TextEditingController emailController;
  final TextEditingController codeController;

  final Function() startTimer;
  final ValueNotifier<int> counter;
  final ValueNotifier<int> minutes;
  final ValueNotifier<int> seconds;
  final AnimatedButtonCubit button;
  final void Function() onSubmit;

  @override
  State<LoginWithNumber> createState() => _LoginWithNumberState();
}

class _LoginWithNumberState extends State<LoginWithNumber> {
  final GlobalKey<FormState> codeKey = GlobalKey<FormState>();

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
  Widget build(BuildContext context) {
    return Form(
      key: codeKey,
      child: AnimatedPadding(
        duration: const Duration(milliseconds: 300),
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.sizeOf(context).width <= ResponsiveSize.lg ? 32 : 64,
          vertical: 32,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Logo(
                size: 36,
              ),
            ),
            const H2(
              'Login',
            ),
            SelectionContainer.disabled(
              child: InkWell(
                onTap: () {
                  widget.pageController.previousPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOutQuint,
                  );
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 4),
                      child: Icon(
                        Icons.account_circle,
                        size: 16,
                        color: PaletteColors.menu,
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
            CodeForm(
              code: widget.codeController,
              startTimer: widget.startTimer,
              counter: widget.counter,
              minutes: widget.minutes,
              seconds: widget.seconds,
            ),
            const SizedBox(height: 10),
            SelectionContainer.disabled(
              child: AnimatedButton(
                width: MediaQuery.sizeOf(context).width,
                title: 'Acessar',
                color: PaletteColors.primary,
                cubit: widget.button,
                formKey: codeKey,
                function: widget.onSubmit,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
