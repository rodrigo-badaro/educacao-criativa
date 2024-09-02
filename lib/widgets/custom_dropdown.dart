import 'package:educacao_criativa/widgets/palette_colors.dart';
import 'package:educacao_criativa/widgets/size_notifier.dart';
import 'package:educacao_criativa/widgets/typography.dart';
import 'package:flutter/material.dart';

class CustomDropdown<T> extends StatelessWidget {
  const CustomDropdown({
    super.key,
    this.leading,
    required this.label,
    required this.optionsList,
    this.onChanged,
    this.readOnly = false,
    this.alert = false,
    this.prefixIcon,
    this.fillColor = Colors.white,
    this.minHeight,
    this.obscureText = false,
    this.value,
    required this.itemBuilder,
  });

  final bool obscureText;
  final double? minHeight;
  final Widget? leading;
  final Color fillColor;
  final IconData? prefixIcon;
  final bool alert;
  final String label;
  final T? value;
  final bool readOnly;
  final List<T> optionsList;
  final void Function(T? value)? onChanged;
  final Widget Function(T value) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<double> menuW = ValueNotifier(300);
    return Container(
      constraints: BoxConstraints(minHeight: minHeight ?? 0.0),
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
        color: fillColor,
        border: Border.all(
          color: PaletteColors.info.withOpacity(0.5),
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(2.0),
      ),
      child: SizeNotifier(
        size: (height, width) => menuW.value = width,
        child: ListTile(
          enabled: false,
          visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
          mouseCursor: MouseCursor.uncontrolled,
          contentPadding: const EdgeInsets.symmetric(horizontal: 10),
          leading: leading,
          title: Row(
            children: alert
                ? [
                    const Padding(
                      padding: EdgeInsets.only(right: 4.0),
                      child: Icon(
                        Icons.error,
                        size: 14,
                        color: PaletteColors.danger,
                      ),
                    ),
                    Flexible(
                      child: TableHeader(
                        label,
                        bold: true,
                        color: PaletteColors.danger,
                      ),
                    ),
                  ]
                : [
                    Flexible(
                      child: TableHeader(
                        label,
                      ),
                    )
                  ],
          ),
          subtitle: readOnly
              ? Paragraph(
                  value.toString(),
                )
              : DropdownButton<T>(
                  value: value,
                  isExpanded: true,
                  isDense: true,
                  menuWidth: menuW.value,
                  icon: const Icon(Icons.arrow_drop_down),
                  underline: const SizedBox.shrink(),
                  onChanged: onChanged,
                  items: optionsList.map<DropdownMenuItem<T>>((T value) {
                    return DropdownMenuItem<T>(
                      value: value,
                      child: itemBuilder(value),
                    );
                  }).toList(),
                ),
        ),
      ),
    );
  }
}
