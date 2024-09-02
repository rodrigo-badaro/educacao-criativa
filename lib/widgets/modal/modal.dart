import 'dart:async';

import 'package:educacao_criativa/responsive_size.dart';
import 'package:educacao_criativa/widgets/modal/modal_body.dart';
import 'package:educacao_criativa/widgets/palette_colors.dart';
import 'package:flutter/material.dart';
import 'package:side_sheet/side_sheet.dart';

class Modal {
  const Modal._();

  static Future<void> right({required BuildContext context, required double width, required Widget body, Function(dynamic)? onClose, Color? barrierColor}) {
    return SideSheet.right(
      barrierColor: barrierColor ?? PaletteColors.black.withOpacity(0.4),
      sheetColor: PaletteColors.background,
      context: context,
      width: MediaQuery.sizeOf(context).width > ResponsiveSize.md ? width : double.maxFinite,
      transitionDuration: Duration(milliseconds: MediaQuery.sizeOf(context).width < ResponsiveSize.sm ? 150 : 300),
      body: ModalBody(child: body),
    ).then((value) {
      if (onClose != null) {
        onClose(value);
      }
    });
  }

  static Future<void> left({required BuildContext context, required double width, required Widget body, Function(dynamic)? onClose, Color? barrierColor}) {
    return SideSheet.left(
      barrierColor: barrierColor ?? PaletteColors.black.withOpacity(0.4),
      sheetColor: PaletteColors.background,
      context: context,
      width: MediaQuery.sizeOf(context).width > ResponsiveSize.md ? width : double.maxFinite,
      transitionDuration: Duration(milliseconds: MediaQuery.sizeOf(context).width < ResponsiveSize.sm ? 150 : 300),
      body: ModalBody(child: body),
    ).then((value) {
      if (onClose != null) {
        onClose(value);
      }
    });
  }
}
