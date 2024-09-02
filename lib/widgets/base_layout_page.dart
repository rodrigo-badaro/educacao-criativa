import 'package:educacao_criativa/responsive_size.dart';
import 'package:educacao_criativa/widgets/base_layout_header.dart';
import 'package:educacao_criativa/widgets/menu/menu.dart';
import 'package:educacao_criativa/widgets/menu_button.dart';
import 'package:educacao_criativa/widgets/palette_colors.dart';
import 'package:educacao_criativa/widgets/search_bar_custom.dart';
import 'package:educacao_criativa/widgets/typography.dart';
import 'package:flutter/material.dart';

class BaseLayoutPage extends StatefulWidget {
  final Widget? navigate;
  final List<Widget>? actions;
  final List<Widget>? actionsBottom;
  final String title;
  final String? subtitle;
  final Widget body;
  final TabController? tabController;
  final List<Tab>? tabs;
  final bool small;
  final void Function()? scrollFunction;
  final ScrollController scrollController;
  final Future<void> Function()? refreshData;
  final Future<void> Function(String value)? searchData;
  final void Function()? floatingButtonFunction;
  final Icon floatingIcon;

  const BaseLayoutPage({
    super.key,
    this.navigate,
    this.tabController,
    this.tabs,
    required this.title,
    this.subtitle,
    required this.body,
    this.actions,
    this.actionsBottom,
    this.refreshData,
    this.searchData,
    this.floatingButtonFunction,
    this.small = false,
    this.scrollFunction,
    required this.scrollController,
    this.floatingIcon = const Icon(Icons.add),
  });

  @override
  State<BaseLayoutPage> createState() => _BaseLayoutPageState();
}

class _BaseLayoutPageState extends State<BaseLayoutPage> with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final FocusNode searchFocus = FocusNode();
  final TextEditingController searchController = TextEditingController();
  final ValueNotifier<bool> isSearching = ValueNotifier(false);

  late final AnimationController controller;
  late final Animation<double> sizeAnimation;

  double headerH = 400;
  double scrollH = 245;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100),
    );

    sizeAnimation = Tween<double>(
      begin: 70,
      end: 300,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: Curves.easeInOutQuint,
        reverseCurve: Curves.easeInOutQuint,
      ),
    );

    controller.addListener(() => setState(() {}));

    widget.scrollController.addListener(scrollFunction);

    if (widget.tabController == null && widget.small) headerH = 120;
    if (widget.tabController != null && widget.small) headerH = 180;

    if (widget.small) scrollH = 60;

    if (widget.navigate != null && widget.tabController == null) headerH += 50;
  }

  @override
  void dispose() {
    super.dispose();
    widget.scrollController.removeListener(scrollFunction);
  }

  void scrollFunction() {
    // double scrollPosition = 310;

    // if (widget.small) scrollPosition = 100;

    // if (widget.scrollController.position.pixels > scrollPosition) {
    //   widget.paddingTop?.value = 50;
    // } else {
    //   widget.paddingTop?.value = 0.0;
    // }

    widget.scrollFunction?.call();

    if (searchController.text.isNotEmpty && widget.scrollController.position.pixels < 1024) {
      isSearching.value = true;
    }

    if (searchController.text.isNotEmpty && widget.scrollController.position.minScrollExtent == widget.scrollController.position.pixels) {
      isSearching.value = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    final hasTabs = widget.tabController != null && widget.tabs != null ? true : false;

    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.grey[100],
      drawer: Drawer(
        child: Menu(
          fromDrawer: true,
          scaffoldKey: _scaffoldKey,
        ),
      ),
      floatingActionButton: widget.floatingButtonFunction == null
          ? null
          : FloatingActionButton(
              onPressed: widget.floatingButtonFunction,
              backgroundColor: PaletteColors.primary,
              child: widget.floatingIcon,
            ),
      body: Stack(
        children: [
          NestedScrollView(
            controller: widget.scrollController,
            headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  pinned: true,
                  expandedHeight: headerH,
                  toolbarHeight: hasTabs ? 100 : 70,
                  elevation: 0,
                  backgroundColor: Colors.white,
                  surfaceTintColor: Colors.white,
                  shape: const Border(
                    bottom: BorderSide(
                      color: Color.fromARGB(255, 224, 224, 224),
                      width: 1,
                    ),
                  ),
                  automaticallyImplyLeading: false,
                  flexibleSpace: FlexibleSpaceBar(
                    titlePadding: EdgeInsets.zero,
                    title: ListenableBuilder(
                      listenable: widget.scrollController,
                      builder: (context, child) {
                        return IgnorePointer(
                          ignoring: widget.scrollController.position.pixels < scrollH,
                          child: AnimatedOpacity(
                            duration: const Duration(milliseconds: 150),
                            curve: Curves.easeInOut,
                            opacity: widget.scrollController.position.pixels > scrollH ? 1 : 0,
                            child: Container(
                              color: Colors.white,
                              padding: hasTabs ? const EdgeInsets.only(bottom: 42) : EdgeInsets.zero,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 56,
                                    height: 56,
                                    child: MenuButton(scaffoldKey: _scaffoldKey),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(bottom: 4.0),
                                      child: H1Small(
                                        widget.title,
                                      ),
                                    ),
                                  ),
                                  Visibility(
                                    visible: widget.searchData != null,
                                    child: SizedBox(
                                      height: 70,
                                      width: 50,
                                      child: IconButton(
                                        onPressed: () => isSearching.value = true,
                                        icon: const Icon(
                                          Icons.search,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                    background: RefreshIndicator(
                      color: Colors.white,
                      backgroundColor: PaletteColors.primary,
                      onRefresh: () async => widget.refreshData?.call(),
                      child: SizedBox(
                        child: CustomScrollView(
                          slivers: [
                            SliverPadding(
                              padding: widget.small ? EdgeInsets.zero : const EdgeInsets.only(bottom: 24),
                              sliver: SliverToBoxAdapter(
                                child: BaseLayoutHeader(
                                  scaffoldKey: _scaffoldKey,
                                  actions: [
                                    ...widget.actions ?? [],
                                    Visibility(
                                      visible: widget.refreshData != null && widget.small,
                                      child: Padding(
                                        padding: const EdgeInsets.only(right: 8),
                                        child: Tooltip(
                                          preferBelow: false,
                                          message: 'Atualizar registros',
                                          child: IconButton(
                                            onPressed: () => widget.refreshData?.call(),
                                            icon: const Icon(
                                              Icons.sync,
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                  search: searchController,
                                  searchFunction: widget.searchData,
                                ),
                              ),
                            ),
                            if (widget.navigate != null)
                              SliverPadding(
                                padding: const EdgeInsets.only(left: 8, bottom: 20),
                                sliver: SliverToBoxAdapter(
                                  child: widget.navigate,
                                ),
                              ),
                            SliverPadding(
                              padding: EdgeInsets.only(left: 20, right: 20, top: widget.tabs != null ? 20 : 0),
                              sliver: SliverToBoxAdapter(
                                child: widget.small ? H1Small(widget.title, maxLines: 1) : H1(widget.title),
                              ),
                            ),
                            SliverPadding(
                              padding: const EdgeInsets.only(left: 20, right: 20),
                              sliver: SliverToBoxAdapter(
                                child: SizedBox(
                                  width: 1200,
                                  child: Paragraph(
                                    widget.subtitle ?? '',
                                    maxLines: widget.small ? 1 : null,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  bottom: PreferredSize(
                    preferredSize: const Size.fromHeight(0.0),
                    child: ListenableBuilder(
                      listenable: widget.scrollController,
                      builder: (context, child) {
                        return IgnorePointer(
                          ignoring: hasTabs ? false : widget.scrollController.position.pixels > scrollH,
                          child: AnimatedOpacity(
                            duration: const Duration(milliseconds: 150),
                            curve: Curves.easeInOut,
                            opacity: hasTabs
                                ? 1
                                : widget.scrollController.position.pixels < scrollH
                                    ? 1
                                    : 0,
                            child: Container(
                              color: hasTabs ? Colors.white : Colors.white.withOpacity(0),
                              width: double.maxFinite,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Visibility(
                                      visible: hasTabs,
                                      child: Align(
                                        alignment: MediaQuery.sizeOf(context).width == ResponsiveSize.sm ? Alignment.center : Alignment.centerLeft,
                                        child: SelectionContainer.disabled(
                                          child: TabBar(
                                            physics: const NeverScrollableScrollPhysics(),
                                            tabAlignment: MediaQuery.sizeOf(context).width != ResponsiveSize.sm ? TabAlignment.start : null,
                                            controller: widget.tabController,
                                            isScrollable: MediaQuery.sizeOf(context).width != ResponsiveSize.sm,
                                            labelPadding: EdgeInsets.zero,
                                            indicatorSize: TabBarIndicatorSize.label,
                                            labelColor: PaletteColors.primary,
                                            indicatorColor: PaletteColors.primary,
                                            indicatorWeight: 1.5,
                                            tabs: widget.tabs ?? [],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    child: Padding(
                                      padding: const EdgeInsets.only(bottom: 8.0, right: 8),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          ...widget.actionsBottom ?? [],
                                          Visibility(
                                            visible: MediaQuery.sizeOf(context).width > ResponsiveSize.sm && widget.refreshData != null && !widget.small,
                                            child: Padding(
                                              padding: const EdgeInsets.only(right: 8),
                                              child: Tooltip(
                                                preferBelow: false,
                                                message: 'Atualizar registros',
                                                child: IconButton(
                                                  onPressed: () => widget.refreshData?.call(),
                                                  icon: const Icon(
                                                    Icons.sync,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ];
            },
            body: widget.body,
          ),
          SearchBarCustom(
            isSearching: isSearching,
            searchFunction: widget.searchData,
            search: searchController,
            searchFocus: searchFocus,
          ),
        ],
      ),
    );
  }
}
