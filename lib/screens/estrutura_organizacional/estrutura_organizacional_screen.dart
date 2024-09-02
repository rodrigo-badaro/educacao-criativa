import 'package:educacao_criativa/get.dart';
import 'package:educacao_criativa/screens/estrutura_organizacional/anos/bloc/series_event.dart';
import 'package:educacao_criativa/screens/estrutura_organizacional/estrutura_organizacional_body.dart';
import 'package:educacao_criativa/screens/estrutura_organizacional/modalidades/bloc/modalidades_event.dart';
import 'package:educacao_criativa/widgets/base_layout_page.dart';
import 'package:educacao_criativa/widgets/typography.dart';
import 'package:flutter/material.dart';

class EstruturaOrganizacionalScreen extends StatefulWidget {
  const EstruturaOrganizacionalScreen({super.key});

  @override
  State<EstruturaOrganizacionalScreen> createState() => _EstruturaOrganizacionalScreenState();
}

class _EstruturaOrganizacionalScreenState extends State<EstruturaOrganizacionalScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BaseLayoutPage(
      title: 'Estrutura organizacional',
      small: true,
      scrollController: ScrollController(),
      body: EstruturaOrganizacionalBody(tabController: _tabController),
      searchData: (value) async {
        modalidadesBloc.add(SearchModalidadesEvent(search: value));
        seriesBloc.add(SearchSeriesEvent(search: value));
      },
      refreshData: () async {
        modalidadesBloc.add(LoadModalidadesEvent(forceReload: true));
        seriesBloc.add(LoadSeriesEvent(forceReload: true));
      },
      tabController: _tabController,
      tabs: const [
        Tab(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TableHeader('Modalidades'),
          ),
        ),
        Tab(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TableHeader('Anos'),
          ),
        ),
      ],
    );
  }
}
