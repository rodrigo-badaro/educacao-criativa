import 'package:educacao_criativa/responsive_size.dart';
import 'package:educacao_criativa/widgets/logo_nome.dart';
import 'package:educacao_criativa/widgets/menu_button.dart';
import 'package:educacao_criativa/widgets/palette_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BaseLayoutHeader extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  final List<Widget>? actions;
  final Future<void> Function(String value)? searchFunction;
  final TextEditingController? search;

  const BaseLayoutHeader({
    super.key,
    this.searchFunction,
    required this.scaffoldKey,
    required this.search,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PreferredSize(
          preferredSize: const Size.fromHeight(56.0),
          child: Container(
            color: Colors.white,
            width: double.maxFinite,
            height: 70,
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: MenuButton(scaffoldKey: scaffoldKey),
                      ),
                      Visibility(
                        visible: MediaQuery.sizeOf(context).width > ResponsiveSize.md || searchFunction == null,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: LogoNome(
                            size: 80,
                          ),
                        ),
                      ),
                      Visibility(
                        visible: searchFunction != null,
                        child: Expanded(
                          child: Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                                child: VerticalDivider(
                                  width: 0.5,
                                  thickness: 0.5,
                                  indent: 8,
                                  endIndent: 8,
                                  color: Colors.grey,
                                ),
                              ),
                              IconButton(
                                onPressed: () => searchFunction?.call(''),
                                icon: Icon(
                                  Icons.search,
                                  color: PaletteColors.info.withOpacity(0.7),
                                  size: 22,
                                ),
                              ),
                              Expanded(
                                child: TextFormField(
                                  controller: search,
                                  keyboardType: TextInputType.text,
                                  onChanged: (value) {
                                    searchFunction?.call(value);
                                  },
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.fromLTRB(0, 4, 12, 4),
                                    border: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                    filled: false,
                                    hintText: 'Pesquisar...',
                                    hintStyle: GoogleFonts.montserrat(
                                      fontSize: 14,
                                      color: PaletteColors.info,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(child: Container()),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.notifications,
                          size: 22,
                          color: PaletteColors.info,
                        ),
                      ),
                      if (actions != null) ...actions!,
                      const SizedBox(width: 8),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
