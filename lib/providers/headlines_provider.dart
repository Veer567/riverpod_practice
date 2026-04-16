import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_practice/providers/news_api_service_provider.dart';

import '../api/models/article.dart';

part 'headlines_provider.g.dart';// headlines.dart
@Riverpod(keepAlive: true)
Future<List<Article>> headlines(Ref ref, String category) async {
  final service = ref.watch(newsApiProvider);
  return service.getTopHeadline(category: category);
}