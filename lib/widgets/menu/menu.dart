import 'package:educacao_criativa/get.dart';
import 'package:educacao_criativa/global.dart';
import 'package:educacao_criativa/services/auth_bloc/auth_event.dart';
import 'package:educacao_criativa/widgets/menu/menu_item_model.dart';
import 'package:educacao_criativa/widgets/menu/menu_tile_item.dart';
import 'package:educacao_criativa/widgets/palette_colors.dart';
import 'package:educacao_criativa/widgets/typography.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pointer_interceptor/pointer_interceptor.dart';

class Menu extends StatefulWidget {
  const Menu({super.key, this.fromDrawer = false, this.scaffoldKey});
  final bool fromDrawer;
  final GlobalKey<ScaffoldState>? scaffoldKey;

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> with SingleTickerProviderStateMixin {
  late final AnimationController controller;
  late final Animation<double> sizeAnimation;
  late final Animation<double> textAnimation;

  String? currentPath;

  List<MenuItemModel> controle = [];
  List<MenuItemModel> clientes = [];
  List<MenuItemModel> cadastro = [];
  List<MenuItemModel> parametrizacao = [];
  List<MenuItemModel> configuracao = [];

  @override
  void initState() {
    super.initState();

    controle = menuItens.paginasMenu.where((e) => e.secao == 'controle').toList();
    clientes = menuItens.paginasMenu.where((e) => e.secao == 'clientes').toList();
    cadastro = menuItens.paginasMenu.where((e) => e.secao == 'cadastro').toList();
    parametrizacao = menuItens.paginasMenu.where((e) => e.secao == 'parametrizacao').toList();
    configuracao = menuItens.paginasMenu.where((e) => e.secao == 'configuracao').toList();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100),
    );

    sizeAnimation = Tween<double>(
      begin: 70,
      end: 270,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: Curves.easeInOutQuint,
        reverseCurve: Curves.easeInOutQuint,
      ),
    );

    textAnimation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(0.8, 1.0),
      ),
    );

    controller.addListener(() {
      if (mounted) {
        setState(() {});
      }
    });

    menuCubit.stream.listen((event) {
      if (menuCubit.state.isOpen) {
        controller.forward();
      } else {
        controller.reverse();
        if (menuCubit.state.isHover) {
          controller.forward();
        } else {
          controller.reverse();
        }
      }
    });

    navigatorKey.currentState?.popUntil((route) {
      currentPath = route.settings.name;
      return true;
    });
  }

  void goToScreen(String path) {
    GlobalKey<ScaffoldState>? scaffoldkey = widget.scaffoldKey;

    if (scaffoldkey != null) {
      scaffoldkey.currentState?.closeDrawer();
    }
    context.go(path);
    setState(() => currentPath = path);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: MouseRegion(
        onEnter: ((event) {
          if (!menuCubit.state.isOpen && !widget.fromDrawer) menuCubit.hover(true);
        }),
        onExit: ((event) {
          if (!menuCubit.state.isOpen && !widget.fromDrawer) menuCubit.hover(false);
        }),
        child: AnimatedContainer(
          alignment: Alignment.topLeft,
          height: double.maxFinite,
          width: sizeAnimation.value,
          duration: const Duration(milliseconds: 246),
          curve: Curves.easeOutQuint,
          margin: const EdgeInsets.all(0),
          padding: const EdgeInsets.all(0),
          decoration: BoxDecoration(
            color: PaletteColors.menu,
            boxShadow: [
              BoxShadow(
                color: const Color(0xFFE2E8F0).withOpacity(0.2),
                spreadRadius: 1,
                offset: const Offset(1, 0),
              ),
            ],
          ),
          child: SingleChildScrollView(
            child: PointerInterceptor(
              child: Container(
                constraints: BoxConstraints(minHeight: MediaQuery.sizeOf(context).height),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5, top: 20),
                          child: Stack(
                            children: [
                              const SizedBox(
                                height: 60,
                                child: Center(
                                  child: Opacity(
                                    opacity: 0.5,
                                    child: Divider(
                                      thickness: 1.5,
                                      indent: 20,
                                      endIndent: 20,
                                      color: PaletteColors.white,
                                    ),
                                  ),
                                ),
                              ),
                              Opacity(
                                opacity: widget.fromDrawer ? 1 : textAnimation.value,
                                child: Container(
                                  color: PaletteColors.menu,
                                  height: 60,
                                  child: const ListTile(
                                    title: Text(
                                      'CONTROLES',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 13,
                                        color: PaletteColors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    subtitle: TableHeader(
                                      'Resumo',
                                      maxLines: 1,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        ...List.generate(
                          controle.length,
                          (index) => MenuTileItem(
                            function: () => goToScreen(controle[index].path),
                            icon: controle[index].icon,
                            title: controle[index].title,
                            active: currentPath?.startsWith(controle[index].path) ?? false,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5, top: 20),
                          child: Stack(
                            children: [
                              const SizedBox(
                                height: 60,
                                child: Center(
                                  child: Opacity(
                                    opacity: 0.5,
                                    child: Divider(
                                      thickness: 1.5,
                                      indent: 20,
                                      endIndent: 20,
                                      color: PaletteColors.white,
                                    ),
                                  ),
                                ),
                              ),
                              Opacity(
                                opacity: widget.fromDrawer ? 1 : textAnimation.value,
                                child: Container(
                                  color: PaletteColors.menu,
                                  height: 60,
                                  child: const ListTile(
                                    title: Text(
                                      'CLIENTES',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 13,
                                        color: PaletteColors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    subtitle: TableHeader(
                                      'Cadastros',
                                      maxLines: 1,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        ...List.generate(
                          clientes.length,
                          (index) => MenuTileItem(
                            function: () => goToScreen(clientes[index].path),
                            icon: clientes[index].icon,
                            title: clientes[index].title,
                            active: currentPath?.startsWith(clientes[index].path) ?? false,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5, top: 20),
                          child: Stack(
                            children: [
                              const SizedBox(
                                height: 60,
                                child: Center(
                                  child: Opacity(
                                    opacity: 0.5,
                                    child: Divider(
                                      thickness: 1.5,
                                      indent: 20,
                                      endIndent: 20,
                                      color: PaletteColors.white,
                                    ),
                                  ),
                                ),
                              ),
                              Opacity(
                                opacity: widget.fromDrawer ? 1 : textAnimation.value,
                                child: Container(
                                  color: PaletteColors.menu,
                                  height: 60,
                                  child: const ListTile(
                                    title: Text(
                                      'CADASTROS',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 13,
                                        color: PaletteColors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    subtitle: TableHeader(
                                      'Cadastros auxiliares',
                                      maxLines: 1,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        ...List.generate(
                          cadastro.length,
                          (index) => MenuTileItem(
                            function: () => goToScreen(cadastro[index].path),
                            icon: cadastro[index].icon,
                            title: cadastro[index].title,
                            active: currentPath?.startsWith(cadastro[index].path) ?? false,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5, top: 20),
                          child: Stack(
                            children: [
                              const SizedBox(
                                height: 60,
                                child: Center(
                                  child: Opacity(
                                    opacity: 0.5,
                                    child: Divider(
                                      thickness: 1.5,
                                      indent: 20,
                                      endIndent: 20,
                                      color: PaletteColors.white,
                                    ),
                                  ),
                                ),
                              ),
                              Opacity(
                                opacity: widget.fromDrawer ? 1 : textAnimation.value,
                                child: Container(
                                  color: PaletteColors.menu,
                                  height: 60,
                                  child: const ListTile(
                                    title: Text(
                                      'PARAMETRIZAÇÃO',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 13,
                                        color: PaletteColors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    subtitle: TableHeader(
                                      'Cadastros de parametros',
                                      maxLines: 1,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        ...List.generate(
                          parametrizacao.length,
                          (index) => MenuTileItem(
                            function: () => goToScreen(parametrizacao[index].path),
                            icon: parametrizacao[index].icon,
                            title: parametrizacao[index].title,
                            active: currentPath?.startsWith(parametrizacao[index].path) ?? false,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5, top: 20),
                          child: Stack(
                            children: [
                              const SizedBox(
                                height: 60,
                                child: Center(
                                  child: Opacity(
                                    opacity: 0.5,
                                    child: Divider(
                                      thickness: 1.5,
                                      indent: 20,
                                      endIndent: 20,
                                      color: PaletteColors.white,
                                    ),
                                  ),
                                ),
                              ),
                              Opacity(
                                opacity: widget.fromDrawer ? 1 : textAnimation.value,
                                child: Container(
                                  color: PaletteColors.menu,
                                  height: 60,
                                  child: const ListTile(
                                    title: Text(
                                      'CONFIGURAÇÕES',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 13,
                                        color: PaletteColors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    subtitle: TableHeader(
                                      'Conta de usuário',
                                      maxLines: 1,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        ...List.generate(
                          configuracao.length,
                          (index) => MenuTileItem(
                            function: () => goToScreen(configuracao[index].path),
                            icon: configuracao[index].icon,
                            title: configuracao[index].title,
                            active: currentPath?.startsWith(configuracao[index].path) ?? false,
                          ),
                        ),
                        MenuTileItem(
                          function: () => authBloc.add(LogOutAuthEvent()),
                          icon: Icons.logout,
                          title: 'Sair',
                          active: false,
                        ),
                        const SizedBox(
                          height: 30,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
