import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:latlong2/latlong.dart';

import '../../../core/constants/app_constants.dart';
import '../../../core/enums.dart';
import '../../../core/location/location_service.dart';
import '../../../core/network/api_exception.dart';
import '../../../data/models/order.dart';
import '../../../data/models/route_info.dart';
import '../../../data/repositories/order_repository.dart';
import '../../../data/repositories/route_repository.dart';

part 'navigation_event.dart';
part 'navigation_state.dart';
part 'navigation_bloc.freezed.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc(this._orders, this._routes, this._location) : super(NavigationState.initial()) {
    on<_Started>(_onStarted);
    on<_LocationRequested>(_onLocationRequested);
    on<_PositionChanged>(_onPositionChanged);
    on<_RouteRequested>((event, emit) => _fetchRoute(emit));
  }

  static const _distance = Distance();

  final OrderRepository _orders;
  final RouteRepository _routes;
  final LocationService _location;
  StreamSubscription<LatLng>? _positionSub;

  Future<void> _onStarted(_Started event, Emitter<NavigationState> emit) async {
    emit(state.copyWith(id: event.id, target: event.target, status: LoadStatus.loading));
    try {
      final order = await _orders.getOrder(event.id);
      emit(state.copyWith(status: LoadStatus.success, order: order, message: null));
    } catch (e) {
      emit(state.copyWith(status: LoadStatus.failure, message: ApiException.messageOf(e)));
      return;
    }

    // the permission prompt can sit there a while, so route from the fallback spot meanwhile
    add(const NavigationEvent.locationRequested());
    await _fetchRoute(emit);
  }

  Future<void> _onLocationRequested(_LocationRequested event, Emitter<NavigationState> emit) async {
    final here = await _location.current();
    // orders all live in the demo city, a far away fix would make the map useless
    if (here == null || !_inDemoCity(here)) return;
    emit(state.copyWith(rider: here, liveLocation: true));
    _positionSub ??= _location.watch().listen((p) => add(NavigationEvent.positionChanged(p)), onError: (_) {});
    await _fetchRoute(emit);
  }

  Future<void> _onPositionChanged(_PositionChanged event, Emitter<NavigationState> emit) async {
    emit(state.copyWith(rider: event.position));
    final routedFrom = state.routedFrom;
    if (routedFrom == null) return;
    if (_distance.as(LengthUnit.Meter, routedFrom, event.position) < AppConstants.rerouteDistanceMeters) return;
    await _fetchRoute(emit);
  }

  Future<void> _fetchRoute(Emitter<NavigationState> emit) async {
    final from = state.origin, to = state.destination;
    if (from == null || to == null) return;
    emit(state.copyWith(routeStatus: LoadStatus.loading));
    try {
      final route = await _routes.getRoute(from, to);
      // a newer request for a different origin may already be on its way
      if (state.origin != from && state.route != null) return;
      emit(state.copyWith(routeStatus: LoadStatus.success, route: route, routedFrom: from));
    } catch (_) {
      emit(state.copyWith(routeStatus: LoadStatus.failure, routedFrom: from));
    }
  }

  bool _inDemoCity(LatLng point) =>
      _distance.as(LengthUnit.Kilometer, point, AppConstants.riderLocation) <= AppConstants.maxDemoDistanceKm;

  @override
  Future<void> close() {
    _positionSub?.cancel();
    return super.close();
  }
}
