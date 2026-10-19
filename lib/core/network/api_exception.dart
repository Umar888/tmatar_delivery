import 'package:dio/dio.dart';

class ApiException implements Exception {
  const ApiException(this.message, {this.statusCode});

  static const genericMessage = 'Something went wrong. Please try again.';

  final String message;
  final int? statusCode;

  bool get isUnauthorized => statusCode == 401;

  static String messageOf(Object error) => error is ApiException ? error.message : genericMessage;

  factory ApiException.fromDio(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return const ApiException('The request timed out. Please try again.');
      case DioExceptionType.connectionError:
        return const ApiException('No internet connection. Check your network and retry.');
      case DioExceptionType.cancel:
        return const ApiException('Request was cancelled.');
      case DioExceptionType.badResponse:
        final data = e.response?.data;
        final message = data is Map ? data['message'] as String? : null;
        return ApiException(
          message ?? 'Server error (${e.response?.statusCode}). Please try again.',
          statusCode: e.response?.statusCode,
        );
      default:
        return const ApiException(genericMessage);
    }
  }

  @override
  String toString() => message;
}
