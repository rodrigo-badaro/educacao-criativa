import 'package:flutter/material.dart';

class TableSliverPersistentHeaderDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;
  final double? height;

  TableSliverPersistentHeaderDelegate({required this.child, this.height});

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      alignment: Alignment.bottomCenter,
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          child,
          Divider(
            height: 0,
            color: Colors.grey[200],
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => height ?? 60.0;

  @override
  double get minExtent => 60.0;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
