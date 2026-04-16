// search_providers.dart
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_practice/providers/news_api_service_provider.dart';

import '../api/models/article.dart';

part 'search_providers.g.dart';

@riverpod
class Search extends _$Search {
  @override
  String build() => '';

  void setQuery(String query) => state = query;

  void clear() => state = '';
}

@riverpod
Future<List<Article>> searchResult(Ref ref, String query) async {
  if (query.trim().isEmpty) return [];
  final service = ref.watch(newsApiProvider);
  return service.searchService(query);
}
