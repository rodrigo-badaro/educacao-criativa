import 'package:educacao_criativa/get.dart';
import 'package:educacao_criativa/global.dart';
import 'package:educacao_criativa/go_router_refresh_stream.dart';
import 'package:educacao_criativa/principal.dart';

import 'package:educacao_criativa/screens/splash/splash_screen.dart';
import 'package:educacao_criativa/services/auth_bloc/auth_event.dart';
import 'package:educacao_criativa/services/auth_bloc/auth_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

late PageController pageController;

final routes = GoRouter(
  navigatorKey: navigatorKey,
  initialLocation: '/',
  errorBuilder: (context, state) => const SplashScreen(),
  refreshListenable: GoRouterRefreshStream(authBloc.stream),
  redirect: (context, state) async {
    while (modalListener.state > 0) {
      modalListener.isOpen(instances: modalListener.state - 1);
      navigatorKey.currentState?.pop();
    }
    if (modalListener.state < 0) {
      modalListener.isOpen(instances: 0);
    }

    var path = state.uri.toString();

    final isLoginRoute = path == '/login';
    final isSplashRoute = path == '/';

    int initialPage = menuItens.paginasMenu.indexWhere((menu) => path.startsWith(menu.path));

    pageController = PageController(initialPage: initialPage);

    switch (authBloc.state) {
      case AuthInitialState _:
        WidgetsBinding.instance.addPostFrameCallback((_) => authBloc.add(CheckAuthEvent()));
        return null;

      case AuthSuccessState _:
        if (authBloc.state.usuario != null && (isLoginRoute || isSplashRoute)) {
          return '/configuracoes';
        }
        break;

      case AuthLogoutState _:
        return '/login';

      default:
        return null;
    }

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      if (pageController.hasClients) {
        pageController.animateToPage(
          initialPage,
          duration: const Duration(milliseconds: 700),
          curve: Curves.easeInOutQuint,
        );

        for (var i = 0; i < menuItens.paginasMenu.length; i++) {
          if (i == initialPage) {
            var pageControllerDetalhes = menuItens.paginasMenu[i].pageControllerDetalhes;

            if (pageControllerDetalhes != null && pageControllerDetalhes.hasClients) {
              if (menuItens.paginasMenu[i].subPath.length == 2) {
                pageControllerDetalhes.animateToPage(
                  path == menuItens.paginasMenu[i].path ? 0 : 1,
                  duration: const Duration(milliseconds: 700),
                  curve: Curves.easeInOutQuint,
                );
              } else {
                String novaString = path.replaceAllMapped(RegExp(r'(\d+)'), (match) => ':id');
                var indexSubPath = menuItens.paginasMenu[i].subPath.indexWhere((subPath) => novaString == subPath);

                if (indexSubPath > -1) {
                  pageControllerDetalhes.animateToPage(
                    indexSubPath,
                    duration: const Duration(milliseconds: 700),
                    curve: Curves.easeInOutQuint,
                  );
                }
              }
            }
          }
        }
      }
    });

    return null;
  },
  routes: [
    ...List.generate(menuItens.paginasExpanded.length, (index) {
      if (!menuItens.paginasExpanded[index].isMenuRoute) {
        return GoRoute(
          path: menuItens.paginasExpanded[index].path,
          pageBuilder: (context, state) => CupertinoPage(
            child: Material(
              child: menuItens.paginasExpanded[index].child,
            ),
            name: menuItens.paginasExpanded[index].path,
          ),
        );
      }

      return GoRoute(
        path: menuItens.paginasExpanded[index].path,
        pageBuilder: (context, state) {
          return CupertinoPage(
            arguments: int.tryParse(state.pathParameters['id'] ?? ''),
            name: menuItens.paginasExpanded[index].path,
            child: Principal(
              pageController: pageController,
            ),
          );
        },
      );
    })
  ],
);
