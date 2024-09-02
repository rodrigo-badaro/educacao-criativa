import 'package:flutter/material.dart';

class CustomDataCell extends StatelessWidget {
  const CustomDataCell({
    required this.child,
    this.ascending,
    this.width,
    this.minWidth,
    super.key,
    this.onSort,
  });

  final void Function()? onSort;
  final double? width;
  final double? minWidth;
  final Widget child;
  final bool? ascending;

  @override
  Widget build(BuildContext context) {
    return onSort == null
        ? Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
            child: child,
          )
        : Material(
            type: MaterialType.transparency,
            child: SizedBox(
              height: 50,
              child: InkWell(
                onTap: onSort == null
                    ? null
                    : () {
                        onSort?.call();
                      },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: child,
                    ),
                    onSort == null
                        ? const SizedBox.shrink()
                        : Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Icon(
                              ascending != null
                                  ? ascending == true
                                      ? Icons.expand_more
                                      : Icons.expand_less
                                  : Icons.unfold_more,
                              size: 16,
                            ),
                          ),
                  ],
                ),
              ),
            ),
          );
  }
}
