import 'package:flutter/material.dart';

class StandardSliverPersistentHeaderDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;
  final double height;
  final ValueNotifier<double> padding;

  StandardSliverPersistentHeaderDelegate({
    required this.child,
    required this.padding,
    this.height = 400.0,
  });

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      alignment: Alignment.topCenter,
      child: AnimatedPadding(
        padding: EdgeInsets.only(top: padding.value),
        duration: const Duration(milliseconds: 100),
        child: child,
      ),
    );
  }

  @override
  double get maxExtent => height;

  @override
  double get minExtent => height;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
