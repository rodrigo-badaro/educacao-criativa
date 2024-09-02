import 'package:flutter/material.dart';

class SliverSizeNotifier extends StatelessWidget {
  const SliverSizeNotifier({
    super.key,
    required this.child,
    required this.size,
  });

  final Function(double height, double width) size;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          WidgetsBinding.instance.addPostFrameCallback(
            (_) {
              if (context.mounted) {
                var childSize = (context.findRenderObject() as RenderBox).size;

                size(childSize.height, childSize.width);
              }
            },
          );

          return child;
        },
      ),
    );
  }
}
