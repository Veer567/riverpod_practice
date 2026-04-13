import 'package:flutter_riverpod/flutter_riverpod.dart'; // ✅ add this
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_practice/models/article.dart';
import 'news_api_service_provider.dart';

part 'search_result_provider.g.dart';

@riverpod
Future<List<Article>> searchResult(Ref ref, String query) async {
  if (query.trim().isEmpty) return [];
  final service = ref.watch(newsApiProvider);
  return service.searchService(query);
}