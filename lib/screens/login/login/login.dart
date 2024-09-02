import 'dart:async';

import 'package:educacao_criativa/get.dart';
import 'package:educacao_criativa/responsive_size.dart';
import 'package:educacao_criativa/screens/login/login/login_form.dart';
import 'package:educacao_criativa/screens/login/login/login_with_email/login_with_email.dart';
import 'package:educacao_criativa/screens/login/login/primeiro_acesso.dart';
import 'package:educacao_criativa/services/auth_bloc/auth_event.dart';
import 'package:educacao_criativa/services/notification/list_notification.dart';
import 'package:educacao_criativa/widgets/animated_button/animated_button_cubit.dart';
import 'package:educacao_criativa/widgets/logo.dart';
import 'package:educacao_criativa/widgets/palette_colors.dart';
import 'package:educacao_criativa/widgets/typography.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final FocusNode emailFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController codeLoginController = TextEditingController();

  final AnimatedButtonCubit emailButton = AnimatedButtonCubit();
  final AnimatedButtonCubit passwordButton = AnimatedButtonCubit();
  final AnimatedButtonCubit loginCodeButton = AnimatedButtonCubit();

  final PageController pageController = PageController(initialPage: 1);
  final PageController pageLoginController = PageController();

  ValueNotifier<int> counter = ValueNotifier(300);
  ValueNotifier<int> minutes = ValueNotifier(5);
  ValueNotifier<int> seconds = ValueNotifier(0);

  Timer? timer;

  ValueNotifier<bool> keeplogged = ValueNotifier(true);

  @override
  void initState() {
    super.initState();
    emailFocusNode.requestFocus();
  }

  void passwordButtonFunction() {
    authBloc.add(
      LoginAuthEvent(
        email: emailController.text,
        password: passwordController.text,
        keeplogged: keeplogged.value,
        cubitButton: passwordButton,
      ),
    );
  }

  void recoveryButtonFunction() {
    // if (recoveryPasswordController.text.contains('@')) {
    //   authBloc.add(
    //     RecoveryPasswordWithEmailEvent(
    //       recoveryEmail: recoveryEmail,
    //       email: recoveryPasswordController.text,
    //       cubitButton: recoveryButton,
    //     ),
    //   );
    // } else {
    //   authBloc.add(
    //     RecoveryPasswordWithPhoneEvent(
    //       telefone: recoveryPasswordController.text,
    //       cubitButton: recoveryButton,
    //       pageController: pageController,
    //     ),
    //   );
    // }
  }

  void recoveryCodeButtonFunction() {
    // authBloc.add(
    //   RecoveryPasswordWithPhoneConfirmEvent(
    //     code: codeRecoveryController.text,
    //     cubitButton: recoveryCodeButton,
    //     pageController: pageController,
    //   ),
    // );
  }

  Future<void> emailButtonFunction() async {
    Completer completer = Completer();

    if (!completer.isCompleted) completer.complete();
    if (emailController.text.contains('@')) {
    } else {
      // authBloc.add(
      //   LoginWithNumberAuthEvent(
      //     phone: emailController.text,
      //     keeplogged: keeplogged.value,
      //     cubitButton: emailButton,
      //     completer: completer,
      //   ),
      // );
    }

    Future.wait([completer.future]).then((val) {
      setState(() {
        pageLoginController.nextPage(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOutQuint,
        );

        if (emailController.text.contains('@')) {
          startTimer();
        }
      });
    });
  }

  void startTimer() {
    counter.value = 300;
    minutes.value = 5;
    seconds.value = 0;

    timer?.cancel();

    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (counter.value > 0) {
        counter.value = counter.value - 1;

        minutes.value = counter.value ~/ 60;
        seconds.value = counter.value % 60;
      } else {
        timer.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MediaQuery.sizeOf(context).width > ResponsiveSize.md ? PaletteColors.background : PaletteColors.white,
      body: Stack(
        children: [
          LayoutBuilder(
            builder: (context, constraints) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: constraints.maxHeight,
                  ),
                  child: Center(
                    child: Stack(
                      children: [
                        Visibility(
                          visible: MediaQuery.sizeOf(context).width > ResponsiveSize.md,
                          child: Positioned.fill(
                            child: Card(
                              margin: EdgeInsets.zero,
                              color: MediaQuery.sizeOf(context).width > ResponsiveSize.md ? PaletteColors.menu : PaletteColors.white,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.zero,
                          decoration: MediaQuery.sizeOf(context).width > ResponsiveSize.md
                              ? BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(
                                      MediaQuery.sizeOf(context).width > ResponsiveSize.md ? 10 : 0,
                                    ),
                                  ),
                                )
                              : null,
                          child: SizedBox(
                            width: ResponsiveSize.lg,
                            child: ExpandablePageView(
                              controller: pageController,
                              physics: const NeverScrollableScrollPhysics(),
                              children: [
                                PrimeiroAcesso(
                                  pageController: pageController,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Visibility(
                                      visible: MediaQuery.sizeOf(context).width > ResponsiveSize.md,
                                      child: AnimatedContainer(
                                        duration: const Duration(milliseconds: 300),
                                        width: MediaQuery.sizeOf(context).width <= ResponsiveSize.md ? 500 : 750,
                                        padding: EdgeInsets.symmetric(horizontal: MediaQuery.sizeOf(context).width <= ResponsiveSize.md ? 64 : 128),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Logo(size: 80),
                                            const H1(
                                              'Bem-vindo ao \nEducação criativa',
                                              color: PaletteColors.background,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(top: 24),
                                              child: Paragraph(
                                                'Nossa plataforma tem como objetivo auxiliar as transportadoras bem como seus clientes com a organização das informações referentes aos transportes centralizando os documentos, checklists, comentários e tudo que é necessário para um bom andamento da operação.',
                                                color: PaletteColors.background.withOpacity(0.9),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.only(
                                          topRight: const Radius.circular(3),
                                          bottomRight: const Radius.circular(3),
                                          topLeft: Radius.circular(MediaQuery.sizeOf(context).width > ResponsiveSize.md ? 0 : 4),
                                          bottomLeft: Radius.circular(MediaQuery.sizeOf(context).width > ResponsiveSize.md ? 0 : 4),
                                        ),
                                        child: Container(
                                          constraints: BoxConstraints(
                                            minHeight: MediaQuery.sizeOf(context).height > 700 ? 650 : MediaQuery.sizeOf(context).height,
                                          ),
                                          color: PaletteColors.white,
                                          child: Center(
                                            child: ExpandablePageView(
                                              controller: pageLoginController,
                                              physics: const NeverScrollableScrollPhysics(),
                                              children: [
                                                LoginForm(
                                                  emailController: emailController,
                                                  emailFocusNode: emailFocusNode,
                                                  keepLoginState: keeplogged,
                                                  button: emailButton,
                                                  signUp: () {
                                                    pageController.previousPage(
                                                      duration: const Duration(milliseconds: 500),
                                                      curve: Curves.easeInOutQuint,
                                                    );
                                                  },
                                                  onSubmit: emailButtonFunction,
                                                  loginWithGoogle: () {},
                                                  loginWithMicrosoft: () {},
                                                ),
                                                LoginWithEmail(
                                                  pageController: pageLoginController,
                                                  emailController: emailController,
                                                  passwordController: passwordController,
                                                  passwordFocusNode: passwordFocusNode,
                                                  button: passwordButton,
                                                  onSubmit: passwordButtonFunction,
                                                  forgotPassword: () {},
                                                  // forgotPassword: () => authBloc.add(RecoveryPasswordAuthEvent(email: emailController.text)),
                                                )
                                                // emailController.text.contains('@')
                                                //     ? LoginWithEmail(
                                                //         pageController: pageLoginController,
                                                //         emailController: emailController,
                                                //         passwordController: passwordController,
                                                //         passwordFocusNode: passwordFocusNode,
                                                //         button: passwordButton,
                                                //         onSubmit: passwordButtonFunction,
                                                //         forgotPassword: () {},
                                                //         // forgotPassword: () => authBloc.add(RecoveryPasswordAuthEvent(email: emailController.text)),
                                                //       )
                                                //     : LoginWithNumber(
                                                //         pageController: pageLoginController,
                                                //         emailController: emailController,
                                                //         codeController: codeLoginController,
                                                //         startTimer: startTimer,
                                                //         counter: counter,
                                                //         minutes: minutes,
                                                //         seconds: seconds,
                                                //         button: loginCodeButton,
                                                //         onSubmit: () {
                                                //           // authBloc.add(
                                                //           //   RecoveryPasswordWithPhoneConfirmEvent(
                                                //           //     code: codeLoginController.text,
                                                //           //     cubitButton: loginCodeButton,
                                                //           //     pageController: pageController,
                                                //           //   ),
                                                //           // );
                                                //         },
                                                //       ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
          const ListNotification(),
        ],
      ),
    );
  }
}
