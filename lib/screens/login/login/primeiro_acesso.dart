import 'package:brasil_fields/brasil_fields.dart';
import 'package:educacao_criativa/responsive_size.dart';
import 'package:educacao_criativa/widgets/animated_button/animated_button.dart';
import 'package:educacao_criativa/widgets/animated_button/animated_button_cubit.dart';
import 'package:educacao_criativa/widgets/custom_input.dart';
import 'package:educacao_criativa/widgets/logo.dart';
import 'package:educacao_criativa/widgets/palette_colors.dart';
import 'package:educacao_criativa/widgets/typography.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

class PrimeiroAcesso extends StatefulWidget {
  const PrimeiroAcesso({super.key, required this.pageController});

  final PageController pageController;

  @override
  State<PrimeiroAcesso> createState() => _PrimeiroAcessoState();
}

class _PrimeiroAcessoState extends State<PrimeiroAcesso> {
  final TextEditingController cpfController = TextEditingController();
  final TextEditingController emailRegisterController = TextEditingController();
  final TextEditingController passwordRegisterController = TextEditingController();
  final TextEditingController passwordConfirmRegisterController = TextEditingController();

  final PageController pageRegisterController = PageController();

  final GlobalKey<FormState> keyCpf = GlobalKey<FormState>();
  final GlobalKey<FormState> keyRegister = GlobalKey<FormState>();

  final AnimatedButtonCubit cpfButton = AnimatedButtonCubit();
  final AnimatedButtonCubit registerbutton = AnimatedButtonCubit();

  ValueNotifier<int?> userID = ValueNotifier<int?>(null);
  bool obscurePassword = true;

  @override
  void initState() {
    super.initState();

    userID.addListener(() async {
      if (userID.value != null) {
        await Future.delayed(const Duration(milliseconds: 600), () {
          pageRegisterController.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.easeInOutQuint);
        });
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    cpfButton.close();
  }

  void checkCpfFunction() {
    userID.value = null;

    // bloc.add(
    //   CheckCPFAuthEvent(
    //     cpf: cpfController.text,
    //     userID: userID,
    //     cubitButton: cpfButton,
    //     pageController: pageRegisterController,
    //   ),
    // );
  }

  void registerFunction() {
    if (userID.value != null) {
      // bloc.add(
      //   SignUpEvent(
      //     id: userID.value!,
      //     email: emailRegisterController.text,
      //     password: passwordConfirmRegisterController.text,
      //     cubitButton: registerbutton,
      //   ),
      // );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Flexible(
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(3),
              bottomLeft: const Radius.circular(3),
              topRight: Radius.circular(MediaQuery.sizeOf(context).width > ResponsiveSize.sm ? 0 : 3),
              bottomRight: Radius.circular(MediaQuery.sizeOf(context).width > ResponsiveSize.sm ? 0 : 3),
            ),
            child: LayoutBuilder(
              builder: (context, contentConstraints) {
                return Container(
                  constraints: BoxConstraints(
                    minHeight: MediaQuery.sizeOf(context).height > 700 ? 650 : MediaQuery.sizeOf(context).height,
                  ),
                  color: Colors.white,
                  child: Center(
                    child: ExpandablePageView(
                      controller: pageRegisterController,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        Form(
                          key: keyCpf,
                          child: AnimatedPadding(
                            duration: const Duration(milliseconds: 300),
                            padding: EdgeInsets.symmetric(
                              horizontal: MediaQuery.sizeOf(context).width <= ResponsiveSize.lg ? 32 : 64,
                              vertical: 32,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 32),
                                  child: Logo(
                                    size: 36,
                                  ),
                                ),
                                const H2(
                                  'Cadastro',
                                  color: PaletteColors.info,
                                ),
                                SelectionContainer.disabled(
                                  child: InkWell(
                                    onTap: () {
                                      widget.pageController.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.easeInOutQuint);
                                    },
                                    child: const Row(
                                      children: [
                                        Paragraph('Já possui uma conta? '),
                                        Paragraph(
                                          'Faça o login',
                                          color: PaletteColors.primary,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 20),
                                LayoutBuilder(builder: (context, constraints) {
                                  return Wrap(
                                    children: [
                                      SizedBox(
                                        width: constraints.maxWidth > 530 ? constraints.maxWidth * 0.7 : constraints.maxWidth,
                                        child: const Padding(
                                          padding: EdgeInsets.all(4.0),
                                          child: CustomInput(label: 'Nome'),
                                        ),
                                      ),
                                      SizedBox(
                                        width: constraints.maxWidth > 530 ? constraints.maxWidth * 0.3 : constraints.maxWidth,
                                        child: const Padding(
                                          padding: EdgeInsets.all(4.0),
                                          child: CustomInput(label: 'Telefone'),
                                        ),
                                      ),
                                      SizedBox(
                                        width: constraints.maxWidth,
                                        child: const Padding(
                                          padding: EdgeInsets.all(4.0),
                                          child: CustomInput(label: 'E-mail'),
                                        ),
                                      ),
                                      SizedBox(
                                        width: constraints.maxWidth > 530 ? constraints.maxWidth * 0.5 : constraints.maxWidth,
                                        child: Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child: CustomInput(
                                            label: 'Senha',
                                            actions: [
                                              IconButton(
                                                onPressed: () {},
                                                icon: const Icon(
                                                  Icons.visibility_off,
                                                  size: 18,
                                                  color: PaletteColors.info,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: constraints.maxWidth > 530 ? constraints.maxWidth * 0.5 : constraints.maxWidth,
                                        child: Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child: CustomInput(
                                            label: 'Confirme a senha',
                                            actions: [
                                              IconButton(
                                                onPressed: () {},
                                                icon: const Icon(
                                                  Icons.visibility_off,
                                                  size: 18,
                                                  color: PaletteColors.info,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                }),
                                const SizedBox(height: 32),
                                AnimatedButton(
                                  width: contentConstraints.maxWidth,
                                  height: 36,
                                  title: 'Cadastrar',
                                  cubit: cpfButton,
                                  formKey: keyCpf,
                                  color: PaletteColors.primary,
                                  function: checkCpfFunction,
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
                                        child: TableHeader('Ou cadastre-se com'),
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
                                            'icons8-google.svg',
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
                                            'icons8-microsoft.svg',
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
                        ),
                        Form(
                          key: keyRegister,
                          child: AnimatedPadding(
                            duration: const Duration(milliseconds: 300),
                            padding: EdgeInsets.symmetric(
                              horizontal: MediaQuery.sizeOf(context).width <= ResponsiveSize.lg ? 32 : 64,
                              vertical: 32,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 32),
                                  child: Logo(
                                    size: 36,
                                  ),
                                ),
                                const H2(
                                  'Cadastrar senha',
                                  color: PaletteColors.info,
                                ),
                                SizedBox(
                                  width: 200,
                                  child: SelectionContainer.disabled(
                                    child: Material(
                                      type: MaterialType.transparency,
                                      child: InkWell(
                                        onTap: () {
                                          widget.pageController.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.easeInOutQuint);
                                        },
                                        child: const Row(
                                          children: [
                                            Paragraph(
                                              'Voltar ao login',
                                              color: PaletteColors.primary,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(left: 8),
                                              child: Icon(
                                                Icons.arrow_right_alt,
                                                color: PaletteColors.primary,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 20),
                                const Padding(
                                  padding: EdgeInsets.only(top: 12, bottom: 4),
                                  child: Label('CPF'),
                                ),
                                TextFormField(
                                  enabled: false,
                                  controller: cpfController,
                                  onFieldSubmitted: (value) => checkCpfFunction(),
                                  inputFormatters: [
                                    FilteringTextInputFormatter.digitsOnly,
                                    CpfInputFormatter(),
                                  ],
                                  validator: (value) {
                                    if (value != null && value.isNotEmpty) return null;

                                    return "Informe um cpf válido";
                                  },
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 12, bottom: 4),
                                  child: Label('E-mail'),
                                ),
                                TextFormField(
                                  controller: emailRegisterController,
                                  onFieldSubmitted: (value) => registerFunction(),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Informe o e-mail";
                                    }

                                    if (!value.contains('@')) {
                                      return "Informe um e-mail válido";
                                    }

                                    return null;
                                  },
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 12, bottom: 4),
                                  child: Label('Senha'),
                                ),
                                TextFormField(
                                  controller: passwordRegisterController,
                                  obscureText: obscurePassword,
                                  onFieldSubmitted: (value) => registerFunction(),
                                  decoration: InputDecoration(
                                    suffixIcon: IconButton(
                                      onPressed: () => setState(() => obscurePassword = !obscurePassword),
                                      icon: SizedBox(
                                        height: 20,
                                        child: Icon(
                                          obscurePassword ? Icons.visibility_off : Icons.visibility,
                                          color: PaletteColors.menu,
                                          size: 20,
                                        ),
                                      ),
                                    ),
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Informe a senha";
                                    }

                                    return null;
                                  },
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 12, bottom: 4),
                                  child: Label('Confirmar Senha'),
                                ),
                                TextFormField(
                                  controller: passwordConfirmRegisterController,
                                  obscureText: obscurePassword,
                                  onFieldSubmitted: (value) => registerFunction(),
                                  decoration: InputDecoration(
                                    suffixIcon: IconButton(
                                      onPressed: () => setState(() => obscurePassword = !obscurePassword),
                                      icon: SizedBox(
                                        height: 20,
                                        child: Icon(
                                          obscurePassword ? Icons.visibility_off : Icons.visibility,
                                          color: PaletteColors.menu,
                                          size: 20,
                                        ),
                                      ),
                                    ),
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Informe a senha";
                                    }

                                    if (value != passwordConfirmRegisterController.text) {
                                      return "As senhas devem ser identicas";
                                    }

                                    return null;
                                  },
                                ),
                                const SizedBox(height: 32),
                                SelectionContainer.disabled(
                                  child: AnimatedButton(
                                    width: double.maxFinite,
                                    title: 'Cadastrar',
                                    cubit: registerbutton,
                                    formKey: keyRegister,
                                    color: PaletteColors.primary,
                                    function: registerFunction,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        Visibility(
          visible: MediaQuery.sizeOf(context).width > ResponsiveSize.sm,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            width: 530,
            padding: const EdgeInsets.symmetric(horizontal: 64),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const H1(
                  'Vamos começar',
                  color: PaletteColors.background,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: Paragraph(
                    'Preencha os campos ao lado para realizar seu cadastro. Após realizar o login você poderá solicitar a participação em uma empresa ou cadastrar sua própria empresa para utilizar todos os recursos que o painel de cargas tem a oferecer.',
                    color: PaletteColors.background.withOpacity(0.9),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
