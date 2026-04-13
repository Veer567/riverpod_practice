import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice/providers/search_provider.dart';
import 'package:riverpod_practice/widget/news_list_view.dart';

import '../providers/search_result_provider.dart';

class SearchScreen extends ConsumerWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final query = ref.watch(searchProvider);
    final result = ref.watch(searchResultProvider(query));
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          autofocus: true,
          decoration: InputDecoration(
            hintText: 'Search news...',
            border: InputBorder.none,
          ),
          onChanged: (val) => ref.read(searchProvider.notifier).setQuery(val),
        ),
        actions: [
          if (query.isNotEmpty)
            IconButton(
              icon: const Icon(Icons.clear),
              onPressed: () => ref.read(searchProvider.notifier).clear(),
            ),
        ],
      ),
      body: result.when(
        data: (articles) {
          if (articles.isEmpty && query.isNotEmpty) {
            return const Center(child: Text('No results found'));
          }
          return ListView.builder(
            itemCount: articles.length,
            itemBuilder: (context, index) =>
                ArticleCard(article: articles[index]),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('Error: $e')),
      ),
    );
  }
}
