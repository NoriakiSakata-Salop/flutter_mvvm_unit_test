import 'package:dio/dio.dart';

class ApiClient {
  final Dio _dio;
  static const baseUrl = 'https://jsonplaceholder.typicode.com/';

  ApiClient({Dio? dio}) : _dio = dio ?? Dio(BaseOptions(baseUrl: baseUrl));

  Future<dynamic> get(String path) async {
    return commonBehavior(await _dio.get(path));
  }

  dynamic commonBehavior(Response<dynamic> response) {
    switch (response.statusCode) {
      case 200:
        return response.data;
    }
  }
}
