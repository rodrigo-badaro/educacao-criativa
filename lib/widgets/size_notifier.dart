import 'package:flutter/material.dart';

class SizeNotifier extends StatelessWidget {
  const SizeNotifier({
    super.key,
    required this.child,
    required this.size,
  });

  final Function(double height, double width) size;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        if (context.mounted) {
          var childSize = (context.findRenderObject() as RenderBox).size;

          size(childSize.height, childSize.width);
        }
      },
    );

    return child;
  }
}
