import 'package:educacao_criativa/get.dart';
import 'package:educacao_criativa/responsive_size.dart';
import 'package:educacao_criativa/widgets/typography.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: menuCubit.stream,
        builder: (context, snapshot) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 60.0),
            child: SizedBox(
              width: menuCubit.state.isOpen ? MediaQuery.sizeOf(context).width - 270 : MediaQuery.sizeOf(context).width - 70,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 32.0),
                      child: Divider(height: 1),
                    ),
                    MediaQuery.sizeOf(context).width > ResponsiveSize.sm
                        ? const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Paragraph('© 2024 Todos os direitos reservados.'),
                              Paragraph('Feito à mão & Feito com amor.'),
                            ],
                          )
                        : const Wrap(
                            alignment: WrapAlignment.center,
                            spacing: 24,
                            children: [
                              Paragraph('© 2024 Todos os direitos reservados.'),
                              Paragraph('Feito à mão & Feito com amor.'),
                            ],
                          ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
