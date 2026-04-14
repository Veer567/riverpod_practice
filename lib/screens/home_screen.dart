import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice/core/constants/categories.dart';

import '../widget/news_list_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: Categories.category.length,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('News Reader'),

          bottom: TabBar(
            indicatorColor: Colors.blue,
            tabAlignment: .start,
            isScrollable: true,
            tabs: Categories.category
                .map((c) => Tab(text: c.toUpperCase()))
                .toList(),
          ),
        ),

        body: Consumer(
          builder: (BuildContext context, WidgetRef ref, Widget? child) {
            return TabBarView(
              children: Categories.category
                  .map((c) => NewsListView(category: c))
                  .toList(),
            );
          },
        ),
      ),
    );
  }
}
