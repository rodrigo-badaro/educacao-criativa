import 'package:educacao_criativa/widgets/custom_input.dart';
import 'package:educacao_criativa/widgets/date_time_picker/date_picker.dart';
import 'package:educacao_criativa/widgets/palette_colors.dart';
import 'package:educacao_criativa/widgets/typography.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

final GlobalKey _dataKey = GlobalKey();
ValueNotifier<DateTime?> _date = ValueNotifier<DateTime?>(null);

class CustomDatePicker extends StatelessWidget {
  const CustomDatePicker({
    super.key,
    this.label,
    this.enable = true,
    this.initialDate,
    required this.onChange,
  });
  final String? label;
  final DateTime? initialDate;
  final bool enable;
  final void Function(DateTime? date) onChange;

  @override
  Widget build(BuildContext context) {
    _date.value = initialDate;
    return InkWell(
      onTap: () {
        final RenderBox overlay = Overlay.of(context).context.findRenderObject() as RenderBox;
        final RenderBox containerBox = _dataKey.currentContext?.findRenderObject() as RenderBox;
        final Offset containerPosition = containerBox.localToGlobal(Offset.zero);

        showMenu(
          color: Colors.white,
          surfaceTintColor: PaletteColors.white,
          elevation: 16,
          context: context,
          constraints: const BoxConstraints(
            minWidth: 430,
            maxWidth: 430,
          ),
          position: RelativeRect.fromRect(
            Offset(containerPosition.dx, containerPosition.dy + 34) & containerBox.size, // Posição e tamanho do Container
            Offset.zero & overlay.size, // Tamanho da tela completa
          ),
          items: [
            PopupMenuItem(
              enabled: false,
              mouseCursor: MouseCursor.defer,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: const TableHeader('Selecione a data'),
                      trailing: TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Icon(
                          Icons.close,
                          size: 18,
                          color: PaletteColors.info,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: SizedBox(
                        height: 250,
                        child: DatePicker(
                          initialDate: initialDate ?? DateTime.now(),
                          onChange: (dateTime) {
                            _date.value = dateTime;
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Expanded(
                            flex: 2,
                            child: ElevatedButton(
                              style: const ButtonStyle(backgroundColor: WidgetStatePropertyAll(PaletteColors.danger)),
                              onPressed: () {
                                _date.value = null;
                                onChange.call(_date.value);
                              },
                              child: const Paragraph(
                                'Remover',
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            flex: 3,
                            child: ElevatedButton(
                              style: const ButtonStyle(backgroundColor: WidgetStatePropertyAll(PaletteColors.primary)),
                              onPressed: () {
                                _date.value ??= DateTime.now();
                                onChange.call(_date.value);
                                Navigator.of(context).pop();
                              },
                              child: const Paragraph(
                                'Selecionar',
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        );
      },
      child: IgnorePointer(
        child: CustomInput(
          key: _dataKey,
          label: label,
          readOnly: true,
          initialValue: DateFormat('dd/MM/yyyy').format(initialDate ?? DateTime.now()),
          showVerticalDivider: false,
          actions: !enable
              ? []
              : [
                  InkWell(
                    child: SizedBox(
                      height: double.maxFinite,
                      width: 50,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: Icon(
                          Icons.arrow_drop_down,
                          color: Colors.grey[700],
                          size: 26,
                        ),
                      ),
                    ),
                  )
                ],
        ),
      ),
    );
  }
}
