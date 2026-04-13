import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_practice/api/services/news_api_service.dart';
import 'package:riverpod_practice/providers/dio_provider.dart';

part 'news_api_service_provider.g.dart';
@riverpod
NewsApiService newsApi(Ref ref) {        // ← no Future, no async
  final dio = ref.watch(dioProvider);
  return NewsApiService(dio);
}