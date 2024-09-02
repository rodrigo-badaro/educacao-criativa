import 'dart:async';

import 'package:educacao_criativa/widgets/custom_input.dart';
import 'package:educacao_criativa/widgets/palette_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class CustomAutocomplete<T extends Object> extends StatefulWidget {
  final T? value;
  final void Function(T? value)? onChange;
  final Widget Function(T value) itemBuilder;
  final String Function(T option) displayStringForOption;
  final FutureOr<Iterable<T>> Function(TextEditingValue value) optionsBuilder;
  final String? label;
  final void Function()? onFocusChange;
  final bool keepValue;

  const CustomAutocomplete({
    super.key,
    this.onChange,
    this.onFocusChange,
    this.value,
    required this.itemBuilder,
    required this.displayStringForOption,
    required this.optionsBuilder,
    required this.label,
    this.keepValue = true,
  });

  @override
  State<CustomAutocomplete<T>> createState() => _CustomAutocompleteState<T>();
}

class _CustomAutocompleteState<T extends Object> extends State<CustomAutocomplete<T>> {
  TextEditingValue initialValue = const TextEditingValue();
  TextEditingController textController = TextEditingController();
  T? itemSelecionado;

  @override
  void initState() {
    super.initState();
    if (widget.value != null) {
      initialValue = TextEditingValue(text: widget.displayStringForOption(widget.value!));
    }
  }

  void onSelect({T? selection}) {
    if (selection != null) {
      textController.text = widget.displayStringForOption(selection);
      if (widget.onChange != null) widget.onChange?.call(selection);
      if (!widget.keepValue) {
        textController.clear();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Autocomplete<T>(
          initialValue: initialValue,
          displayStringForOption: widget.displayStringForOption,
          fieldViewBuilder: (context, textEditingController, focusNode, onFieldSubmitted) {
            if (focusNode.canRequestFocus && !widget.keepValue) focusNode.requestFocus();
            textController = textEditingController;
            focusNode.addListener(() {
              if (textController.text.isNotEmpty && !focusNode.hasFocus) {
                widget.onFocusChange?.call();
              }
            });
            return CustomInput(
              label: widget.label ?? '-',
              controller: textController,
              focusNode: focusNode,
              onFieldSubmitted: (value) {
                onFieldSubmitted();
                onSelect(selection: itemSelecionado);
              },
            );
          },
          optionsBuilder: widget.optionsBuilder,
          optionsViewBuilder: (context, onSelected, options) {
            return Align(
              alignment: Alignment.topLeft,
              child: Card(
                child: SizedBox(
                  width: constraints.maxWidth,
                  height: getHeight(length: options.length),
                  child: ListView.builder(
                    itemCount: options.length,
                    itemBuilder: (context, index) {
                      return Builder(
                        builder: (context) {
                          final bool highlight = AutocompleteHighlightedOption.of(context) == index;
                          if (highlight) {
                            SchedulerBinding.instance.addPostFrameCallback((Duration timeStamp) async {
                              await Scrollable.ensureVisible(context, alignment: 0.5);
                              itemSelecionado = options.elementAt(index);
                            });
                          }

                          return Container(
                            color: highlight ? PaletteColors.background : null,
                            child: ListTile(
                              onTap: () => onSelected(options.elementAt(index)),
                              title: widget.itemBuilder(options.elementAt(index)),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
            );
          },
          onSelected: (T selection) {
            onSelect(selection: selection);
          },
        );
      },
    );
  }

  double getHeight({required int length}) {
    double height = 200.0;
    return height;
  }
}
