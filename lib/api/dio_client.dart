import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:riverpod_practice/api/api_endpoint.dart';


class DioClient {
  DioClient._();

  static final Dio dio = _createDio();
  static Dio _createDio() {
    final dio = Dio(
      BaseOptions(
        baseUrl: apiEndPoint.baseUrl,
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
        queryParameters: {
          // Every request automatically includes the API key
          'apiKey': dotenv.env['API_KEY'],
        },
      ),
    );

    // Logging interceptor — great for debugging
    dio.interceptors.add(
      LogInterceptor(
        requestBody: true,
        responseBody: true,
        logPrint: (obj) => debugPrint(obj.toString()),
      ),
    );

    return dio;
  }
}
