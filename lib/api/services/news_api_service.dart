import 'package:dio/dio.dart';
import 'package:riverpod_practice/api/api_endpoint.dart';
import '../models/article.dart';

class NewsApiService {
  final Dio _dio;

  NewsApiService(this._dio);

  Future<List<Article>> getTopHeadline({
    required String category,
    String country = 'us',
  }) async {
    final response = await _dio.get(
      apiEndPoint.topHeadlines,
      queryParameters: {
        'category': category,
        'country': country,
        'pageSize': 20,
      },
    );
    return (response.data['articles'] as List)
        .map((json) => Article.fromJson(json))
        .where((a) => a.title != '[Removed]')
        .toList();
  }
  Future<List<Article>> searchService(String query) async {
    final response = await _dio.get(
      apiEndPoint.everything,
      queryParameters: {'q': query, 'sortBy': 'publishedAt', 'pageSize': 20},
    );
    return (response.data['articles'] as List)
        .map((json) => Article.fromJson(json))
        .where((a) => a.title != '[Removed]')
        .toList();
  }
}
