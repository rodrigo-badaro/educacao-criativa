import 'package:educacao_criativa/widgets/date_time_picker/hours.dart';
import 'package:educacao_criativa/widgets/date_time_picker/minutes.dart';
import 'package:educacao_criativa/widgets/palette_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class DateTimePicker extends StatefulWidget {
  const DateTimePicker({super.key, required this.date});
  final ValueNotifier<DateTime> date;

  @override
  State<DateTimePicker> createState() => _DateTimePickerState();
}

class _DateTimePickerState extends State<DateTimePicker> {
  late FixedExtentScrollController hController = FixedExtentScrollController();
  late FixedExtentScrollController mController = FixedExtentScrollController();

  int hour = 0;
  int minutes = 0;

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      var minIndex = (widget.date.value.minute / 5).toString();

      hController.animateToItem(widget.date.value.hour, duration: const Duration(milliseconds: 300), curve: Curves.linear);
      mController.animateToItem(int.parse(minIndex), duration: const Duration(milliseconds: 300), curve: Curves.linear);
    });
  }

  @override
  void dispose() {
    hController.dispose();
    mController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          width: 1,
          color: const Color(0xFFCBD5E1),
        ),
        borderRadius: const BorderRadius.all(Radius.circular(5)),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 230,
            child: CalendarDatePicker(
              initialDate: widget.date.value,
              firstDate: DateTime.parse('1970-01-01'),
              lastDate: DateTime.parse('2030-12-31'),
              onDateChanged: (val) {
                widget.date.value = DateTime(val.year, val.month, val.day, hour, minutes);
              },
            ),
          ),
          Divider(
            height: 1,
            indent: 20,
            endIndent: 20,
            color: Colors.grey[300],
          ),
          SizedBox(
            height: 150,
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(
                  color: Colors.white.withOpacity(0.8),
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 70,
                      child: ListWheelScrollView.useDelegate(
                        controller: hController,
                        squeeze: 2,
                        itemExtent: 100,
                        perspective: 0.0001,
                        diameterRatio: 10,
                        physics: const FixedExtentScrollPhysics(),
                        onSelectedItemChanged: (value) {
                          setState(() {
                            hour = value;
                            widget.date.value = DateTime(widget.date.value.year, widget.date.value.month, widget.date.value.day, hour, minutes);
                          });
                        },
                        childDelegate: ListWheelChildLoopingListDelegate(
                          children: List<Widget>.generate(
                            24,
                            (index) => Hours(
                              hours: index,
                              bold: (index == hour),
                              color: PaletteColors.primary,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          ':',
                          style: TextStyle(fontSize: 28, color: PaletteColors.primary),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 70,
                      child: ListWheelScrollView.useDelegate(
                        controller: mController,
                        squeeze: 2,
                        itemExtent: 100,
                        perspective: 0.0001,
                        diameterRatio: 10,
                        physics: const FixedExtentScrollPhysics(),
                        onSelectedItemChanged: (value) {
                          setState(() {
                            minutes = value * 5;
                            widget.date.value = DateTime(widget.date.value.year, widget.date.value.month, widget.date.value.day, hour, minutes);
                          });
                        },
                        childDelegate: ListWheelChildLoopingListDelegate(
                          children: List<Widget>.generate(
                            12,
                            (index) => Minutes(
                              mins: index * 5,
                              bold: (index * 5 == minutes),
                              color: PaletteColors.primary,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                IgnorePointer(
                  child: SizedBox(
                    height: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          color: Colors.white.withOpacity(0.8),
                          height: 50,
                        ),
                        Container(
                          color: Colors.white.withOpacity(0.8),
                          height: 50,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
