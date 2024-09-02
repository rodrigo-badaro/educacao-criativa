import 'package:educacao_criativa/screens/estrutura_organizacional/anos/anos_cadastro.dart';
import 'package:educacao_criativa/screens/estrutura_organizacional/anos/anos_table.dart';
import 'package:educacao_criativa/screens/estrutura_organizacional/modalidades/modalidades_cadastro.dart';
import 'package:educacao_criativa/screens/estrutura_organizacional/modalidades/modalidades_table.dart';
import 'package:educacao_criativa/widgets/palette_colors.dart';
import 'package:flutter/material.dart';

class EstruturaOrganizacionalBody extends StatelessWidget {
  const EstruturaOrganizacionalBody({super.key, required this.tabController});

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: tabController,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Scaffold(
          body: const ModalidadesTable(),
          floatingActionButton: FloatingActionButton(
            onPressed: () async => cadastroModalidadePopUp(context: context),
            backgroundColor: PaletteColors.primary,
            child: const Icon(Icons.add),
          ),
        ),
        Scaffold(
          body: const AnosTable(),
          floatingActionButton: FloatingActionButton(
            onPressed: () async => cadastroAnoPopUp(context: context),
            backgroundColor: PaletteColors.primary,
            child: const Icon(Icons.add),
          ),
        ),
      ],
    );
  }
}
