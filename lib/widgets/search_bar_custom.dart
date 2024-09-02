import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchBarCustom extends StatefulWidget {
  const SearchBarCustom({super.key, required this.isSearching, required this.searchFunction, required this.search, required this.searchFocus});

  final ValueNotifier<bool> isSearching;
  final Future<void> Function(String value)? searchFunction;
  final TextEditingController search;
  final FocusNode searchFocus;

  @override
  State<SearchBarCustom> createState() => _SearchBarCustomState();
}

class _SearchBarCustomState extends State<SearchBarCustom> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, scaffoldConstraints) {
      return ListenableBuilder(
        listenable: widget.isSearching,
        builder: (context, snapshot) {
          return AnimatedContainer(
            duration: const Duration(milliseconds: 246),
            curve: Curves.easeOut,
            width: scaffoldConstraints.maxWidth,
            height: widget.isSearching.value ? 70 : 0,
            decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(
                bottom: BorderSide(
                  color: Color.fromARGB(255, 224, 224, 224),
                  width: 1,
                ),
              ),
            ),
            child: Visibility(
              visible: widget.isSearching.value,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 70,
                    width: 70,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 4),
                      child: IconButton(
                        onPressed: (() {
                          widget.isSearching.value = false;
                        }),
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.grey[400],
                          size: 22,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextFormField(
                      controller: widget.search,
                      focusNode: widget.searchFocus,
                      autofocus: true,
                      keyboardType: TextInputType.text,
                      onChanged: (value) => widget.searchFunction?.call(value),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        filled: false,
                        hintText: 'Pesquisar...',
                        hintStyle: GoogleFonts.montserrat(
                          fontSize: 14,
                          color: Colors.grey[700],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 70,
                    width: 70,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 4),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            widget.isSearching.value = false;
                            if (widget.search.text.isNotEmpty) {
                              widget.search.clear();
                              widget.searchFunction?.call('');
                            }
                          });
                        },
                        icon: const Icon(
                          Icons.clear,
                          size: 22,
                          color: Colors.redAccent,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      );
    });
  }
}
