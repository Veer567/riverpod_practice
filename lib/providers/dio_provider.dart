import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_practice/api/dio_client.dart';

part 'dio_provider.g.dart';

@riverpod
Dio dio(Ref ref) {
  return DioClient.dio;
}