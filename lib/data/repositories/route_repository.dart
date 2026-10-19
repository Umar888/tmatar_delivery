import 'package:dio/dio.dart';
import 'package:latlong2/latlong.dart';

import '../../core/network/api_endpoints.dart';
import '../../core/network/api_exception.dart';
import '../models/route_info.dart';

class RouteRepository {
  RouteRepository(this._dio);

  final Dio _dio;

  Future<RouteInfo> getRoute(LatLng from, LatLng to) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        ApiEndpoints.route(from, to),
        queryParameters: {'overview': 'full', 'geometries': 'geojson'},
      );
      final routes = response.data?['routes'] as List?;
      if (response.data?['code'] != 'Ok' || routes == null || routes.isEmpty) {
        throw const ApiException('No route found for this trip.');
      }
      return RouteInfo.fromOsrm(Map<String, dynamic>.from(routes.first as Map));
    } on DioException catch (e) {
      throw ApiException.fromDio(e);
    }
  }
}
