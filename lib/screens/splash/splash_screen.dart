import 'package:educacao_criativa/widgets/palette_colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key, this.redirectToFormularios = false});

  final bool redirectToFormularios;

  @override
  Widget build(BuildContext context) {
    if (redirectToFormularios) {
      context.go('/formularios');
    }

    return Scaffold(
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        return Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                LoadingAnimationWidget.fourRotatingDots(
                  color: PaletteColors.info,
                  size: 60,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Logo(color: PaletteColors.info, size: 64, sizeIcon: 28, showIcon: true),
                  ],
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
