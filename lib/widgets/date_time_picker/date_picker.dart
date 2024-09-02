import 'package:educacao_criativa/widgets/palette_colors.dart';
import 'package:flutter/material.dart';

class DatePicker extends StatelessWidget {
  const DatePicker({super.key, this.initialDate, required this.onChange});
  final DateTime? initialDate;
  final void Function(DateTime dateTime) onChange;

  @override
  Widget build(BuildContext context) {
    DateTime dateTime = DateTime.now();
    if (initialDate != null) dateTime = initialDate!;

    return Container(
      decoration: BoxDecoration(
        color: PaletteColors.background,
        border: Border.all(
          color: const Color.fromRGBO(15, 23, 42, 0.2),
          width: 1,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(3)),
      ),
      child: Theme(
        data: Theme.of(context).copyWith(
          datePickerTheme: const DatePickerThemeData(
            dayStyle: TextStyle(fontSize: 13),
            weekdayStyle: TextStyle(fontSize: 13),
            yearStyle: TextStyle(fontSize: 13),
          ),
        ),
        child: SelectionContainer.disabled(
          child: CalendarDatePicker(
            initialDate: dateTime,
            firstDate: DateTime.parse('1069-11-30'),
            lastDate: DateTime.parse('2099-12-31'),
            onDateChanged: (val) {
              var date = DateTime(val.year, val.month, val.day, 0, 00);
              onChange.call(date);
            },
          ),
        ),
      ),
    );
  }
}
