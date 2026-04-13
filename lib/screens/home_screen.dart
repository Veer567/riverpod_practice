import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice/core/constants/categories.dart';
import 'package:riverpod_practice/providers/category_provider.dart';
import 'package:riverpod_practice/screens/search_screen.dart';

import '../widget/news_list_view.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: Categories.category.length,
      vsync: this,
    );
    // Sync tab changes to the StateProvider
    // ref.read (not ref.watch) inside initState and callbacks —
    // because you're ACTING, not OBSERVING.
    _tabController.addListener(() {
      if (!_tabController.indexIsChanging) {
        ref.read(categoryProvider.notifier).state =
            Categories.category[_tabController.index];
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //to select category
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('News Reader'),
        actions: [
          IconButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const SearchScreen()),
            ),
            icon: Icon(Icons.search),
          ),
        ],
        bottom: TabBar(tabAlignment: .start,
          controller: _tabController,
          isScrollable: true,
          tabs: Categories.category
              .map((c) => Tab(text: c.toUpperCase()))
              .toList(),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: Categories.category
            .map((c) => NewsListView(category: c))
            .toList(),
      ),
    );
  }
}
