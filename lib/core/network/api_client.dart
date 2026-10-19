import 'package:dio/dio.dart';

import '../storage/session_storage.dart';
import 'api_exception.dart';

class ApiClient {
  ApiClient(this._dio, this._session) {
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          final token = _session.token;
          if (token != null) options.headers['Authorization'] = 'Bearer $token';
          handler.next(options);
        },
      ),
    );
  }

  final Dio _dio;
  final SessionStorage _session;

  Future<dynamic> get(String path, {Map<String, dynamic>? query}) =>
      _send(() => _dio.get(path, queryParameters: query));

  Future<dynamic> post(String path, {Object? body}) => _send(() => _dio.post(path, data: body));

  Future<dynamic> put(String path, {Object? body}) => _send(() => _dio.put(path, data: body));

  Future<dynamic> _send(Future<Response<dynamic>> Function() request) async {
    try {
      final response = await request();
      final body = response.data;
      if (body is Map && body['success'] == true) return body['data'];
      throw ApiException(
        (body is Map ? body['message'] as String? : null) ?? 'Unexpected response from server.',
        statusCode: response.statusCode,
      );
    } on DioException catch (e) {
      final error = ApiException.fromDio(e);
      if (error.isUnauthorized) await _session.clear();
      throw error;
    }
  }
}
