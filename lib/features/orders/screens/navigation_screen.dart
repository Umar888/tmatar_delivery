import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:go_router/go_router.dart';
import 'package:latlong2/latlong.dart';

import '../../../core/constants/app_constants.dart';
import '../../../core/enums.dart';
import '../../../core/router/app_router.dart';
import '../../../core/theme/theme.dart';
import '../../../core/utils/formatters.dart';
import '../../../core/utils/launcher.dart';
import '../../../shared/widgets/widgets.dart';
import '../bloc/navigation_bloc.dart';
import '../widgets/location_tile.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  static const _mapPadding = EdgeInsets.fromLTRB(60, 140, 60, 320);

  final _map = MapController();
  bool _mapReady = false;

  void _fitRoute(List<LatLng> points) {
    if (!_mapReady || points.length < 2) return;
    _map.fitCamera(CameraFit.coordinates(coordinates: points, padding: _mapPadding));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<NavigationBloc, NavigationState>(
        listenWhen: (p, c) => p.route != c.route && c.route != null,
        listener: (context, state) => _fitRoute(state.routePoints),
        buildWhen: (p, c) => p.status != c.status,
        builder: (context, state) {
          if (state.order == null) {
            return SafeArea(
              child: state.status.isFailure
                  ? ErrorView(
                      message: state.message ?? '',
                      onRetry: () =>
                          context.read<NavigationBloc>().add(NavigationEvent.started(state.id, state.target)),
                    )
                  : const LoadingView(),
            );
          }
          return Stack(
            children: [
              _RouteMap(
                controller: _map,
                initialFit: CameraFit.coordinates(coordinates: state.routePoints, padding: _mapPadding),
                onReady: () {
                  _mapReady = true;
                  final current = context.read<NavigationBloc>().state;
                  if (current.hasRoadRoute) _fitRoute(current.routePoints);
                },
              ),
              _TopBar(toPickup: state.toPickup),
              const Align(alignment: Alignment.bottomCenter, child: _TripSheet()),
            ],
          );
        },
      ),
    );
  }
}

class _RouteMap extends StatelessWidget {
  const _RouteMap({required this.controller, required this.initialFit, required this.onReady});

  final MapController controller;
  final CameraFit initialFit;
  final VoidCallback onReady;

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      mapController: controller,
      options: MapOptions(initialCameraFit: initialFit, onMapReady: onReady),
      children: [
        TileLayer(
          urlTemplate: AppConstants.mapTileUrl,
          userAgentPackageName: AppConstants.mapUserAgent,
          // a tile that fails to load just stays blank, no need to report it
          tileProvider: NetworkTileProvider(silenceExceptions: true),
        ),
        BlocBuilder<NavigationBloc, NavigationState>(
          buildWhen: (p, c) => p.route != c.route || p.rider != c.rider,
          builder: (context, state) => PolylineLayer(
            polylines: [
              Polyline(
                points: state.routePoints,
                strokeWidth: 6,
                color: AppColors.info,
                borderStrokeWidth: 2,
                borderColor: Colors.white,
                pattern: state.hasRoadRoute
                    ? const StrokePattern.solid()
                    : StrokePattern.dashed(segments: const [12, 8]),
              ),
            ],
          ),
        ),
        BlocBuilder<NavigationBloc, NavigationState>(
          buildWhen: (p, c) => p.origin != c.origin,
          builder: (context, state) => MarkerLayer(
            markers: [
              Marker(point: state.origin!, width: 64, height: 64, child: const _RiderMarker()),
              Marker(
                point: state.destination!,
                width: 48,
                height: 48,
                alignment: Alignment.topCenter,
                child: Icon(
                  state.toPickup ? Icons.store_rounded : Icons.location_on_rounded,
                  color: state.toPickup ? AppColors.primary : AppColors.danger,
                  size: 46,
                  shadows: const [Shadow(color: Colors.black26, blurRadius: 6)],
                ),
              ),
            ],
          ),
        ),
        const SimpleAttributionWidget(source: Text(AppConstants.mapAttribution)),
      ],
    );
  }
}

class _TopBar extends StatelessWidget {
  const _TopBar({required this.toPickup});

  final bool toPickup;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            IconButton.filled(
              onPressed: () => context.pop(),
              style: IconButton.styleFrom(
                backgroundColor: AppColors.surface,
                foregroundColor: AppColors.textPrimary,
                elevation: 2,
              ),
              icon: const Icon(Icons.arrow_back_rounded),
            ),
            const Spacer(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              decoration: BoxDecoration(
                color: AppColors.success,
                borderRadius: AppRadius.xl,
                boxShadow: AppShadows.marker,
              ),
              child: Row(
                children: [
                  const Icon(Icons.navigation_rounded, color: Colors.white, size: 18),
                  const SizedBox(width: 6),
                  Text(
                    toPickup ? 'Navigate to Pickup' : 'Navigate to Delivery',
                    style: AppTextStyles.label.copyWith(color: Colors.white, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            const Spacer(),
            const SizedBox(width: 48),
          ],
        ),
      ),
    );
  }
}

class _TripSheet extends StatelessWidget {
  const _TripSheet();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 18, 16, 12),
      decoration: const BoxDecoration(
        color: AppColors.surface,
        borderRadius: AppRadius.sheet,
        boxShadow: AppShadows.sheet,
      ),
      child: SafeArea(
        top: false,
        child: BlocBuilder<NavigationBloc, NavigationState>(
          buildWhen: (p, c) =>
              p.route != c.route ||
              p.routeStatus != c.routeStatus ||
              p.liveLocation != c.liveLocation ||
              p.origin != c.origin,
          builder: (context, state) {
            final order = state.order!;
            final km = state.distanceKm;
            final eta = state.hasRoadRoute ? Formatters.duration(state.route!.durationMin) : Formatters.eta(km);
            return Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    Expanded(child: Text(state.toPickup ? 'PICKUP FROM' : 'DELIVER TO', style: AppTextStyles.overline)),
                    _Pill(
                      icon: state.liveLocation ? Icons.my_location_rounded : Icons.location_searching_rounded,
                      label: state.liveLocation ? 'Live location' : 'Demo location',
                      color: state.liveLocation ? AppColors.success : AppColors.textSecondary,
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                LocationTile(
                  leading: state.toPickup ? const StoreTile() : const PinTile(),
                  location: state.toPickup ? order.pickup : order.drop,
                  extra: _RouteSummary(
                    label: '${Formatters.distance(km)}  •  $eta',
                    status: state.routeStatus,
                    hasRoadRoute: state.hasRoadRoute,
                    onRetry: () => context.read<NavigationBloc>().add(const NavigationEvent.routeRequested()),
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: AppButton(
                        label: 'Open in Maps',
                        icon: Icons.map_outlined,
                        outlined: true,
                        onPressed: () async {
                          final opened = await Launcher.directions(from: state.origin!, to: state.destination!);
                          if (!opened && context.mounted) {
                            showAppSnackBar(context, 'Could not open maps', error: true);
                          }
                        },
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: AppButton(
                        label: state.toPickup ? 'Reached Store' : 'Reached',
                        icon: Icons.check_circle_outline_rounded,
                        onPressed: () => context.pushReplacement(
                          state.toPickup ? AppRoutes.pickupVerify(order.id) : AppRoutes.deliver(order.id),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class _RouteSummary extends StatelessWidget {
  const _RouteSummary({required this.label, required this.status, required this.hasRoadRoute, required this.onRetry});

  final String label;
  final LoadStatus status;
  final bool hasRoadRoute;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(label, style: AppTextStyles.label),
        const SizedBox(width: 8),
        if (status.isLoading && !hasRoadRoute)
          const SizedBox(width: 12, height: 12, child: CircularProgressIndicator(strokeWidth: 1.6))
        else if (!hasRoadRoute)
          GestureDetector(
            onTap: onRetry,
            child: const _Pill(icon: Icons.refresh_rounded, label: 'Approx.', color: AppColors.warning),
          ),
      ],
    );
  }
}

class _Pill extends StatelessWidget {
  const _Pill({required this.icon, required this.label, required this.color});

  final IconData icon;
  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(color: color.withValues(alpha: 0.12), borderRadius: AppRadius.xs),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 13, color: color),
          const SizedBox(width: 4),
          Text(label, style: AppTextStyles.small.copyWith(color: color)),
        ],
      ),
    );
  }
}

class _RiderMarker extends StatelessWidget {
  const _RiderMarker();

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          decoration: BoxDecoration(color: AppColors.info.withValues(alpha: 0.18), shape: BoxShape.circle),
        ),
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            color: AppColors.info,
            shape: BoxShape.circle,
            border: Border.all(color: Colors.white, width: 3),
            boxShadow: AppShadows.marker,
          ),
          child: const Icon(Icons.navigation_rounded, color: Colors.white, size: 16),
        ),
      ],
    );
  }
}
