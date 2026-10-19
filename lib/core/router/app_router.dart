import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/bloc/login_bloc.dart';
import '../../features/auth/bloc/otp_bloc.dart';
import '../../features/auth/screens/login_screen.dart';
import '../../features/auth/screens/otp_screen.dart';
import '../../features/earnings/bloc/earnings_bloc.dart';
import '../../features/earnings/screens/earnings_screen.dart';
import '../../features/history/bloc/history_bloc.dart';
import '../../features/history/screens/history_screen.dart';
import '../../features/home/bloc/home_bloc.dart';
import '../../features/home/screens/home_screen.dart';
import '../../features/orders/bloc/delivery_bloc.dart';
import '../../features/orders/bloc/navigation_bloc.dart';
import '../../features/orders/bloc/order_detail_bloc.dart';
import '../../features/orders/bloc/orders_bloc.dart';
import '../../features/orders/bloc/pickup_bloc.dart';
import '../../features/orders/screens/delivery_screen.dart';
import '../../features/orders/screens/navigation_screen.dart';
import '../../features/orders/screens/order_detail_screen.dart';
import '../../features/orders/screens/orders_screen.dart';
import '../../features/orders/screens/pickup_verify_screen.dart';
import '../../features/profile/bloc/edit_profile_bloc.dart';
import '../../features/profile/bloc/profile_bloc.dart';
import '../../features/profile/screens/edit_profile_screen.dart';
import '../../features/profile/screens/profile_screen.dart';
import '../../features/splash/screens/splash_screen.dart';
import '../di/injection.dart';
import '../enums.dart';
import '../storage/session_storage.dart';
import 'main_shell.dart';

class AppRoutes {
  AppRoutes._();

  static const splash = '/';
  static const login = '/login';
  static const otp = '/otp';
  static const home = '/home';
  static const orders = '/orders';
  static const earnings = '/earnings';
  static const profile = '/profile';
  static const editProfile = '/profile/edit';
  static const history = '/history';

  static String order(String id) => '/order/$id';
  static String navigate(String id, NavigationTarget target) => '/order/$id/navigate?mode=${target.queryValue}';
  static String pickupVerify(String id) => '/order/$id/pickup-verify';
  static String deliver(String id) => '/order/$id/deliver';
}

class AppRouter {
  AppRouter(this._session);

  final SessionStorage _session;

  late final GoRouter router = GoRouter(
    initialLocation: AppRoutes.splash,
    refreshListenable: _session.isLoggedIn,
    redirect: (context, state) {
      final path = state.matchedLocation;
      if (path == AppRoutes.splash) return null;
      final onAuth = path == AppRoutes.login || path == AppRoutes.otp;
      final loggedIn = _session.isLoggedIn.value;
      if (!loggedIn && !onAuth) return AppRoutes.login;
      if (loggedIn && onAuth) return AppRoutes.home;
      return null;
    },
    routes: [
      GoRoute(path: AppRoutes.splash, builder: (_, _) => const SplashScreen()),
      GoRoute(
        path: AppRoutes.login,
        builder: (_, _) => BlocProvider(create: (_) => LoginBloc(sl()), child: const LoginScreen()),
      ),
      GoRoute(
        path: AppRoutes.otp,
        redirect: (_, state) => state.extra is String ? null : AppRoutes.login,
        builder: (_, state) {
          final phone = state.extra! as String;
          return BlocProvider(
            create: (_) => OtpBloc(sl(), phone: phone)..add(const OtpEvent.started()),
            child: OtpScreen(phone: phone),
          );
        },
      ),
      StatefulShellRoute.indexedStack(
        builder: (_, _, shell) => MainShell(shell: shell),
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRoutes.home,
                builder: (_, _) => BlocProvider(
                  create: (_) => HomeBloc(sl(), sl(), sl())..add(const HomeEvent.started()),
                  child: const HomeScreen(),
                ),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRoutes.orders,
                builder: (_, state) => BlocProvider(
                  create: (_) => OrdersBloc(sl())..add(const OrdersEvent.started()),
                  child: const OrdersScreen(),
                ),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRoutes.earnings,
                builder: (_, _) => BlocProvider(
                  create: (_) => EarningsBloc(sl(), sl())..add(const EarningsEvent.started()),
                  child: const EarningsScreen(),
                ),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRoutes.profile,
                builder: (_, _) => BlocProvider(
                  create: (_) => ProfileBloc(sl(), sl())..add(const ProfileEvent.started()),
                  child: const ProfileScreen(),
                ),
              ),
            ],
          ),
        ],
      ),
      GoRoute(
        path: AppRoutes.editProfile,
        builder: (_, _) => BlocProvider(
          create: (_) => EditProfileBloc(sl())..add(const EditProfileEvent.started()),
          child: const EditProfileScreen(),
        ),
      ),
      GoRoute(
        path: AppRoutes.history,
        builder: (_, _) => BlocProvider(
          create: (_) => HistoryBloc(sl())..add(const HistoryEvent.started()),
          child: const HistoryScreen(),
        ),
      ),
      GoRoute(
        path: '/order/:id',
        builder: (_, state) => _orderDetail(state, const OrderDetailScreen()),
        routes: [
          GoRoute(
            path: 'navigate',
            builder: (_, state) => BlocProvider(
              create: (_) => NavigationBloc(sl(), sl(), sl())
                ..add(
                  NavigationEvent.started(
                    state.pathParameters['id']!,
                    NavigationTarget.fromQuery(state.uri.queryParameters['mode']),
                  ),
                ),
              child: const NavigationScreen(),
            ),
          ),
          GoRoute(
            path: 'pickup-verify',
            builder: (_, state) => BlocProvider(
              create: (_) => PickupBloc(sl())..add(PickupEvent.started(state.pathParameters['id']!)),
              child: const PickupVerifyScreen(),
            ),
          ),
          GoRoute(
            path: 'deliver',
            builder: (_, state) => BlocProvider(
              create: (_) => DeliveryBloc(sl())..add(DeliveryEvent.started(state.pathParameters['id']!)),
              child: const DeliveryScreen(),
            ),
          ),
        ],
      ),
    ],
  );

  static Widget _orderDetail(GoRouterState state, Widget child) => BlocProvider(
    create: (_) => OrderDetailBloc(sl())..add(OrderDetailEvent.started(state.pathParameters['id']!)),
    child: child,
  );
}
