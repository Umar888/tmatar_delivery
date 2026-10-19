import 'package:dio/dio.dart';

import '../../core/constants/app_constants.dart';
import 'mock_delivery_server.dart';

// answers every request locally, drop this interceptor to hit a real backend
class MockApiInterceptor extends Interceptor {
  MockApiInterceptor(this._server, {this.latency = AppConstants.mockLatency});

  final MockDeliveryServer _server;
  final Duration latency;

  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    await Future<void>.delayed(latency);

    final result = _server.handle(
      method: options.method.toUpperCase(),
      path: Uri.parse(options.path).path,
      query: options.queryParameters,
      body: options.data,
      authorization: options.headers['Authorization'] as String?,
    );

    final response = Response<dynamic>(requestOptions: options, statusCode: result.statusCode, data: result.body);

    if (result.statusCode < 400) {
      handler.resolve(response);
    } else {
      handler.reject(
        DioException.badResponse(statusCode: result.statusCode, requestOptions: options, response: response),
      );
    }
  }
}
