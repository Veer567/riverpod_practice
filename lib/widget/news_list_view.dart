import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice/core/constants/app_images.dart';
import 'package:riverpod_practice/providers/headlines_provider.dart';

import '../../models/article.dart';

class NewsListView extends ConsumerWidget {
  final String category;

  const NewsListView({super.key, required this.category});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final articles = ref.watch(headlinesProvider(category));

    return RefreshIndicator(
      onRefresh: () async {
        ref.invalidate(headlinesProvider(category));
        await ref.read(headlinesProvider(category).future);
      },
      child: articles.when(
        data: (articles) => ListView.builder(
          itemCount: articles.length,
          itemBuilder: (context, index) =>
              ArticleCard(article: articles[index]),
        ),

        error: (err, stack) => Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.wifi_off, size: 48),
              const SizedBox(height: 12),
              Text('Failed to load: $err'),
              TextButton(
                onPressed: () => ref.invalidate(headlinesProvider(category)),
                child: const Text('Retry'),
              ),
            ],
          ),
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}

class ArticleCard extends ConsumerWidget {
  final Article article;

  const ArticleCard({super.key, required this.article});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watch the Set<String> from BookmarkNotifier
    // The widget rebuilds when ANY bookmark changes —
    // but the actual check is O(1) since it's a Set.

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: ListTile(
        leading: article.urlToImage != null
            ? ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.network(
                  article.urlToImage!,
                  width: 72,
                  height: 72,
                  fit: BoxFit.cover,
                  errorBuilder: (_, __, ___) =>
                      Image.asset(AppImages.na, fit: .contain),
                ),
              )
            : Image.asset(AppImages.na),
        title: Text(
          article.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
        subtitle: Text(article.sourceName),
      ),
    );
  }
}
