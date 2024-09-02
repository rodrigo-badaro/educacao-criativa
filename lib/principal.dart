import 'dart:async';

import 'package:async/async.dart';
import 'package:educacao_criativa/get.dart';
import 'package:educacao_criativa/responsive_size.dart';
import 'package:educacao_criativa/screens/clientes/bloc/clientes_event.dart';
import 'package:educacao_criativa/screens/deficiencias/bloc/deficiencias_event.dart';
import 'package:educacao_criativa/screens/espacos/bloc/espacos_event.dart';
import 'package:educacao_criativa/screens/estacoes/bloc/estacoes_event.dart';
import 'package:educacao_criativa/screens/estrutura_organizacional/anos/bloc/series_event.dart';
import 'package:educacao_criativa/screens/estrutura_organizacional/modalidades/bloc/modalidades_event.dart';
import 'package:educacao_criativa/screens/formato_de_notas/bloc/formato_notas_event.dart';
import 'package:educacao_criativa/screens/itens/bloc/itens_event.dart';
import 'package:educacao_criativa/screens/materiais_de_apoio/bloc/materiais_de_apoio_event.dart';
import 'package:educacao_criativa/screens/periodicidade/bloc/periodicidade_event.dart';
import 'package:educacao_criativa/screens/splash/splash_screen.dart';
import 'package:educacao_criativa/screens/tipo_de_unidades/bloc/tipo_de_unidades_event.dart';
import 'package:educacao_criativa/screens/unidades/bloc/unidades_event.dart';
import 'package:educacao_criativa/screens/usuarios/bloc/usuarios_event.dart';
import 'package:educacao_criativa/services/auth_bloc/auth_state.dart';
import 'package:educacao_criativa/services/notification/list_notification.dart';
import 'package:educacao_criativa/widgets/menu/menu.dart';
import 'package:educacao_criativa/widgets/palette_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Principal extends StatefulWidget {
  const Principal({
    super.key,
    required this.pageController,
  });

  final PageController? pageController;

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> with SingleTickerProviderStateMixin {
  late final AnimationController controller;
  late final Animation<double> sizeAnimation;

  final Completer formatoNotasCompleter = Completer();
  final Completer periodicidadeCompleter = Completer();
  final Completer deficienciasCompleter = Completer();
  final Completer tiposDeUnidadesCompleter = Completer();
  final Completer modalidadesCompleter = Completer();
  final Completer seriesCompleter = Completer();
  final Completer estacoesCompleter = Completer();
  final Completer materiaisApoioCompleter = Completer();
  final Completer itensCompleter = Completer();
  final Completer usuariosCompleter = Completer();
  final Completer clientesCompleter = Completer();
  final Completer unidadesCompleter = Completer();
  final Completer espacosCompleter = Completer();

  late Future googleFontsPending;
  String currentPath = '';

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      OverlayState overlayState = Overlay.of(context);

      OverlayEntry overlayEntry = OverlayEntry(
        builder: (context) => const ListNotification(),
      );

      overlayState.insert(overlayEntry);
    });

    googleFontsPending = GoogleFonts.pendingFonts([
      GoogleFonts.poppins(fontSize: 13.5, fontWeight: FontWeight.w500, color: PaletteColors.info),
      GoogleFonts.inter(fontSize: 36, letterSpacing: -0.0141279, fontWeight: FontWeight.w900, color: PaletteColors.info),
      GoogleFonts.roboto(fontSize: 12.5, color: PaletteColors.info, fontWeight: FontWeight.w500),
      GoogleFonts.montserrat(fontSize: 13, color: PaletteColors.info),
    ]);

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

    controller.addListener(() => setState(() {}));

    menuCubit.stream.listen((event) {
      if (menuCubit.state.isOpen) {
        controller.forward();
      } else {
        try {
          controller.reverse();
        } catch (e) {
          null;
        }
      }
    });

    if (authBloc.state.runtimeType == AuthSuccessState) init();

    authBloc.stream.listen((event) {
      if (authBloc.state.runtimeType == AuthSuccessState) {
        init();
      }
    });
  }

  void init() {
    if (!formatoNotasCompleter.isCompleted) {
      formatoNotasBloc.add(LoadFormatoNotasEvent(completer: formatoNotasCompleter));
    }
    if (!periodicidadeCompleter.isCompleted) {
      periodicidadeBloc.add(LoadPeriodicidadeEvent(completer: periodicidadeCompleter));
    }
    if (!deficienciasCompleter.isCompleted) {
      deficienciasBloc.add(LoadDeficienciasEvent(completer: deficienciasCompleter));
    }
    if (!tiposDeUnidadesCompleter.isCompleted) {
      tiposDeUnidadesBloc.add(LoadTipoDeUnidadesEvent(completer: tiposDeUnidadesCompleter));
    }
    if (!modalidadesCompleter.isCompleted) {
      modalidadesBloc.add(LoadModalidadesEvent(completer: modalidadesCompleter));
    }
    if (!seriesCompleter.isCompleted) {
      seriesBloc.add(LoadSeriesEvent(completer: seriesCompleter));
    }
    if (!estacoesCompleter.isCompleted) {
      estacoesBloc.add(LoadEstacoesEvent(completer: estacoesCompleter));
    }
    if (!materiaisApoioCompleter.isCompleted) {
      materiaisDeApoioBloc.add(LoadMateriaisDeApoioEvent(completer: materiaisApoioCompleter));
    }
    if (!itensCompleter.isCompleted) {
      itensBloc.add(LoadItensEvent(completer: itensCompleter));
    }
    if (!usuariosCompleter.isCompleted) {
      usuariosBloc.add(LoadUsuariosEvent(completer: usuariosCompleter));
    }

    if (!clientesCompleter.isCompleted) {
      clientesBloc.add(LoadClientesEvent(completer: clientesCompleter));
    }
    if (!unidadesCompleter.isCompleted) {
      unidadesBloc.add(LoadUnidadesEvent(completer: unidadesCompleter));
    }
    if (!espacosCompleter.isCompleted) {
      espacosBloc.add(LoadEspacosEvent(completer: espacosCompleter));
    }

    // if (!controleChecklists.isCompleted) {
    //   ControleChecklistsBloc controleChecklistBloc = getIt<ControleChecklistsBloc>();
    //   controleChecklistBloc.add(LoadControleChecklistsEvent(completer: controleChecklists));
    // }

    // if (!solicitacoesCompleter.isCompleted) {
    //   SolicitacaoBloc solicitacaoBloc = getIt<SolicitacaoBloc>();
    //   solicitacaoBloc.add(LoadSolicitacaoEvent(completer: solicitacoesCompleter));
    // }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: googleFontsPending,
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.done:
              return StreamBuilder(
                stream: StreamGroup.merge([
                  authBloc.stream,
                  menuCubit.stream,
                ]),
                builder: (context, snapshot) {
                  switch (authBloc.state) {
                    case AuthSuccessState _:
                      return Stack(
                        children: [
                          Row(
                            children: [
                              AnimatedContainer(
                                duration: const Duration(milliseconds: 200),
                                curve: Curves.easeInQuint,
                                width: (MediaQuery.sizeOf(context).width > ResponsiveSize.md) ? sizeAnimation.value : 0,
                              ),
                              Expanded(
                                child: Stack(
                                  children: [
                                    PageView(
                                      controller: widget.pageController,
                                      physics: const NeverScrollableScrollPhysics(),
                                      scrollDirection: Axis.vertical,
                                      children: [
                                        ...List.generate(
                                          menuItens.paginasMenu.length,
                                          (index) => menuItens.paginasMenu[index].child,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          RepaintBoundary(
                            child: Visibility(
                              visible: MediaQuery.sizeOf(context).width > ResponsiveSize.md,
                              child: const Menu(),
                            ),
                          ),
                          // Visibility(
                          //   visible: authBloc.state.usuario?.empresas.isEmpty ?? true,
                          //   child: const Onboarding(),
                          // ),
                        ],
                      );
                    default:
                      return const SplashScreen();
                  }
                },
              );
            default:
              return const SplashScreen();
          }
        });
  }
}
