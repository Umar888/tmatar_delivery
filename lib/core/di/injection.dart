import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../data/mock/mock_api_interceptor.dart';
import '../../data/mock/mock_delivery_server.dart';
import '../../data/repositories/auth_repository.dart';
import '../../data/repositories/earnings_repository.dart';
import '../../data/repositories/order_repository.dart';
import '../../data/repositories/profile_repository.dart';
import '../../data/repositories/route_repository.dart';
import '../constants/app_constants.dart';
import '../location/location_service.dart';
import '../network/api_client.dart';
import '../network/api_endpoints.dart';
import '../router/app_router.dart';
import '../storage/session_storage.dart';

final sl = GetIt.instance;

Future<void> setupDependencies() async {
  final prefs = await SharedPreferences.getInstance();
  final session = SessionStorage(prefs);

  final dio = Dio(
    BaseOptions(
      baseUrl: ApiEndpoints.baseUrl,
      connectTimeout: AppConstants.requestTimeout,
      receiveTimeout: AppConstants.requestTimeout,
    ),
  );
  final api = ApiClient(dio, session);
  // added after ApiClient so the auth header is already on the request
  dio.interceptors.add(MockApiInterceptor(MockDeliveryServer(online: session.isOnline)));

  sl
    ..registerSingleton<SessionStorage>(session)
    ..registerSingleton<ApiClient>(api)
    ..registerLazySingleton(LocationService.new)
    ..registerLazySingleton(() => AuthRepository(sl(), sl()))
    ..registerLazySingleton(() => OrderRepository(sl()))
    ..registerLazySingleton(() => EarningsRepository(sl()))
    ..registerLazySingleton(() => ProfileRepository(sl(), sl()))
    // separate client so routing never goes through the mock interceptor
    ..registerLazySingleton(
      () => RouteRepository(
        Dio(
          BaseOptions(
            baseUrl: ApiEndpoints.osrmBaseUrl,
            connectTimeout: AppConstants.requestTimeout,
            receiveTimeout: AppConstants.requestTimeout,
          ),
        ),
      ),
    )
    ..registerLazySingleton(() => AppRouter(sl()));
}
