import 'package:educacao_criativa/get.dart';
import 'package:educacao_criativa/responsive_size.dart';
import 'package:educacao_criativa/widgets/palette_colors.dart';
import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({super.key, required this.scaffoldKey});
  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        if (MediaQuery.sizeOf(context).width < ResponsiveSize.md) {
          scaffoldKey.currentState?.openDrawer();
        } else {
          var state = menuCubit.isOpen;
          menuCubit.expand(!state);
        }
      },
      icon: StreamBuilder<Object>(
          stream: menuCubit.stream,
          builder: (context, snapshot) {
            return AnimatedRotation(
              duration: const Duration(milliseconds: 100),
              turns: menuCubit.isOpen ? 1 : 1.5,
              child: const Icon(
                Icons.menu_open,
                color: PaletteColors.info,
              ),
            );
          }),
    );
  }
}
