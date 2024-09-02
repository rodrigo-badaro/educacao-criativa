import 'package:educacao_criativa/screens/administradores/administradores_screen.dart';
import 'package:educacao_criativa/screens/clientes/clientes_screen.dart';
import 'package:educacao_criativa/screens/deficiencias/deficiencias_screen.dart';
import 'package:educacao_criativa/screens/espacos/espacos_screen.dart';
import 'package:educacao_criativa/screens/estacoes/estacoes_screen.dart';
import 'package:educacao_criativa/screens/estrutura_organizacional/estrutura_organizacional_screen.dart';
import 'package:educacao_criativa/screens/formato_de_notas/formato_de_notas_screen.dart';
import 'package:educacao_criativa/screens/itens/itens_screen.dart';
import 'package:educacao_criativa/screens/login/login/login.dart';
import 'package:educacao_criativa/screens/materiais_de_apoio/materiais_de_apoio_screen.dart';
import 'package:educacao_criativa/screens/periodicidade/periodicidade_screen.dart';
import 'package:educacao_criativa/screens/splash/splash_screen.dart';
import 'package:educacao_criativa/screens/tipo_de_unidades/tipos_de_unidades_screen.dart';
import 'package:educacao_criativa/screens/unidades/unidades_screen.dart';
import 'package:educacao_criativa/screens/usuarios/usuarios_screen.dart';
import 'package:educacao_criativa/widgets/base_layout_page.dart';
import 'package:educacao_criativa/widgets/menu/menu_item_model.dart';
import 'package:educacao_criativa/widgets/palette_colors.dart';
import 'package:flutter/material.dart';

class MenuItens {
  final PageController _pageControllerConfiguracoes = PageController(initialPage: 1, keepPage: true);
  final PageController _pageControllerEstacoes = PageController(initialPage: 0, keepPage: true);

  List<MenuItemModel> get paginas => _initializePaginas();

  List<MenuItemModel> get paginasMenu => paginas.where((e) => e.isMenuRoute).toList();

  List<MenuItemModel> get paginasExpanded => paginas.expand((menuItem) {
        List<MenuItemModel> expandedList = [menuItem];

        for (var subPath in menuItem.subPath) {
          if (!expandedList.any((e) => e.path == subPath)) {
            expandedList.add(
              MenuItemModel(
                icon: menuItem.icon,
                title: menuItem.title,
                subTitle: menuItem.subTitle,
                path: subPath,
                subPath: [],
                isMenuRoute: menuItem.isMenuRoute,
                child: menuItem.child,
                pageControllerDetalhes: menuItem.pageControllerDetalhes,
              ),
            );
          }
        }

        return expandedList;
      }).toList();

  List<MenuItemModel> _initializePaginas() {
    return [
      MenuItemModel(
        icon: Icons.abc,
        title: '',
        path: '/',
        subPath: [],
        isMenuRoute: false,
        child: const SplashScreen(),
      ),
      MenuItemModel(
        icon: Icons.abc,
        title: '',
        path: '/login',
        subPath: [],
        isMenuRoute: false,
        child: const Login(),
      ),
      MenuItemModel(
        icon: Icons.home_outlined,
        title: 'Home',
        path: '/home',
        secao: 'controle',
        subPath: [],
        isMenuRoute: true,
        child: Container(color: PaletteColors.background),
      ),
      MenuItemModel(
        icon: Icons.dashboard_outlined,
        title: 'Dashboard',
        path: '/dashboard',
        secao: 'controle',
        subPath: [],
        isMenuRoute: true,
        child: Container(color: PaletteColors.background),
      ),
      MenuItemModel(
        icon: Icons.campaign,
        title: 'Noticias',
        path: '/noticias',
        secao: 'controle',
        subPath: [],
        isMenuRoute: true,
        child: Container(color: PaletteColors.background),
      ),
      MenuItemModel(
        icon: Icons.support_agent,
        title: 'Tickets',
        path: '/tickets',
        secao: 'controle',
        subPath: [],
        isMenuRoute: true,
        child: Container(color: PaletteColors.background),
      ),
      MenuItemModel(
        icon: Icons.business,
        title: 'Clientes',
        path: '/clientes',
        secao: 'clientes',
        subPath: [],
        isMenuRoute: true,
        child: const ClientesScreen(),
      ),
      MenuItemModel(
        icon: Icons.school,
        title: 'Unidades',
        path: '/unidades',
        secao: 'clientes',
        subPath: [],
        isMenuRoute: true,
        child: const UnidadesScreen(),
      ),
      MenuItemModel(
        icon: Icons.meeting_room,
        title: 'Espaços',
        path: '/espacos',
        secao: 'clientes',
        subPath: [],
        isMenuRoute: true,
        child: const EspacosScreen(),
      ),
      MenuItemModel(
        icon: Icons.badge,
        title: 'Corpo docente',
        path: '/espaços',
        secao: 'clientes',
        subPath: [],
        isMenuRoute: true,
        child: Container(color: PaletteColors.background),
      ),
      MenuItemModel(
        icon: Icons.diversity_2,
        title: 'Alunos',
        path: '/alunos',
        secao: 'clientes',
        subPath: [],
        isMenuRoute: true,
        child: Container(color: PaletteColors.background),
      ),
      MenuItemModel(
        icon: Icons.description,
        title: 'Projetos',
        path: '/projetos',
        secao: 'cadastro',
        subPath: [],
        isMenuRoute: true,
        child: Container(color: PaletteColors.background),
      ),
      MenuItemModel(
        icon: Icons.inventory,
        title: 'Itens',
        path: '/itens',
        secao: 'cadastro',
        subPath: [],
        isMenuRoute: true,
        child: const ItensScreen(),
      ),
      MenuItemModel(
        icon: Icons.groups_2,
        title: 'Usuários',
        path: '/usuarios',
        secao: 'cadastro',
        subPath: [],
        isMenuRoute: true,
        child: const UsuariosScreen(),
      ),
      MenuItemModel(
        icon: Icons.admin_panel_settings,
        title: 'Administradores',
        path: '/administradores',
        secao: 'cadastro',
        subPath: [],
        isMenuRoute: true,
        child: const AdministradoresScreen(),
      ),
      MenuItemModel(
        icon: Icons.production_quantity_limits,
        title: 'Níveis de estoque',
        path: '/niveis-estoque',
        secao: 'controle',
        subPath: [],
        isMenuRoute: true,
        child: Container(color: PaletteColors.background),
      ),
      MenuItemModel(
        icon: Icons.domain,
        title: 'Estações',
        path: '/estacoes',
        secao: 'parametrizacao',
        subPath: ['/estacoes', '/estacoes/:id'],
        isMenuRoute: true,
        pageControllerDetalhes: _pageControllerEstacoes,
        child: EstacoesScreen(pageDetalhesController: _pageControllerEstacoes),
      ),
      MenuItemModel(
        icon: Icons.tune,
        title: 'Tipos de unidade',
        path: '/tipo-de-unidade',
        secao: 'parametrizacao',
        subPath: [],
        isMenuRoute: true,
        pageControllerDetalhes: _pageControllerConfiguracoes,
        child: const TiposDeUnidadesScreen(),
      ),
      MenuItemModel(
        icon: Icons.account_tree,
        title: 'Estrutura organizacional',
        path: '/estrutura-organizacional',
        secao: 'parametrizacao',
        subPath: [],
        isMenuRoute: true,
        pageControllerDetalhes: _pageControllerConfiguracoes,
        child: const EstruturaOrganizacionalScreen(),
      ),
      MenuItemModel(
        icon: Icons.accessible_outlined,
        title: 'Deficiências',
        path: '/deficiencias',
        secao: 'parametrizacao',
        subPath: [],
        isMenuRoute: true,
        pageControllerDetalhes: null,
        child: const DeficienciasScreen(),
      ),
      MenuItemModel(
        icon: Icons.calendar_month,
        title: 'Periodicidade',
        path: '/periodicidade',
        secao: 'parametrizacao',
        subPath: [],
        isMenuRoute: true,
        pageControllerDetalhes: null,
        child: const PeriodicidadeScreen(),
      ),
      MenuItemModel(
        icon: Icons.class_,
        title: 'Formatos de notas',
        path: '/formatos-de-notas',
        secao: 'parametrizacao',
        subPath: [],
        isMenuRoute: true,
        pageControllerDetalhes: null,
        child: const FormatoDeNotasScreen(),
      ),
      MenuItemModel(
        icon: Icons.help_center,
        title: 'Materiais de apoio',
        path: '/materiais-de-apoio',
        secao: 'parametrizacao',
        subPath: [],
        isMenuRoute: true,
        pageControllerDetalhes: null,
        child: const MateriaisDeApoioScreen(),
      ),
      MenuItemModel(
        icon: Icons.manage_accounts,
        title: 'Configurações',
        path: '/configuracoes',
        secao: 'configuracao',
        subPath: [],
        isMenuRoute: true,
        pageControllerDetalhes: _pageControllerConfiguracoes,
        child: BaseLayoutPage(
          scrollController: ScrollController(),
          title: 'hmm',
          subtitle: 'hmmmmm',
          body: Container(
            color: Colors.amber,
          ),
        ),
      ),
    ];
  }
}
