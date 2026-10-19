import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../core/enums.dart';
import '../../../core/router/app_router.dart';
import '../../../core/theme/theme.dart';
import '../../../core/utils/formatters.dart';
import '../../../data/models/order.dart';
import '../../../shared/widgets/widgets.dart';
import '../bloc/order_detail_bloc.dart';
import '../widgets/items_card.dart';
import '../widgets/location_tile.dart';
import '../widgets/order_progress.dart';
import '../widgets/reject_sheet.dart';

class OrderDetailScreen extends StatelessWidget {
  const OrderDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<OrderDetailBloc, OrderDetailState>(
      listenWhen: (p, c) => LoadStatus.settled(p.actionStatus, c.actionStatus),
      listener: (context, state) {
        final failed = state.actionStatus.isFailure;
        showAppSnackBar(context, state.actionMessage ?? '', error: failed);
        if (!failed && state.action == OrderAction.reject) context.pop();
      },
      child: Scaffold(
        appBar: AppBar(title: const Text('Order Details')),
        body: BlocBuilder<OrderDetailBloc, OrderDetailState>(
          buildWhen: (p, c) => p.status != c.status || p.order != c.order,
          builder: (context, state) {
            final order = state.order;
            if (order == null) {
              if (state.status.isFailure) {
                return ErrorView(
                  message: state.message ?? '',
                  onRetry: () => context.read<OrderDetailBloc>().add(OrderDetailEvent.started(state.id)),
                );
              }
              return const LoadingView();
            }
            return _Details(order: order);
          },
        ),
        bottomNavigationBar: BlocBuilder<OrderDetailBloc, OrderDetailState>(
          buildWhen: (p, c) => p.order?.status != c.order?.status || p.actionStatus != c.actionStatus,
          builder: (context, state) {
            final order = state.order;
            if (order == null || order.status.isClosed) return const SizedBox.shrink();
            return BottomBar(
              child: _Actions(order: order, state: state),
            );
          },
        ),
      ),
    );
  }
}

class _Details extends StatelessWidget {
  const _Details({required this.order});

  final Order order;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        SectionCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(Formatters.orderCode(order.id), style: AppTextStyles.title),
                  const Spacer(),
                  StatusChip(status: order.status),
                ],
              ),
              const SizedBox(height: 6),
              Row(
                children: [
                  const Icon(Icons.schedule_rounded, size: 15, color: AppColors.textSecondary),
                  const SizedBox(width: 4),
                  Text('Placed ${Formatters.timeAgo(order.createdAt)}', style: AppTextStyles.caption),
                  const SizedBox(width: 12),
                  Icon(
                    order.isCod ? Icons.payments_outlined : Icons.verified_outlined,
                    size: 15,
                    color: order.isCod ? AppColors.warning : AppColors.success,
                  ),
                  const SizedBox(width: 4),
                  Text(order.isCod ? 'Cash on Delivery' : 'Prepaid', style: AppTextStyles.caption),
                ],
              ),
              if (order.status.isInProgress || order.status == OrderStatus.delivered) ...[
                const SizedBox(height: 18),
                OrderProgress(status: order.status),
              ],
              if (order.status == OrderStatus.cancelled && order.cancelReason != null) ...[
                const SizedBox(height: 12),
                Text(order.cancelReason!, style: const TextStyle(color: AppColors.danger)),
              ],
              if (order.deliveredAt != null) ...[
                const SizedBox(height: 12),
                Text(
                  'Delivered on ${Formatters.dateTime(order.deliveredAt!)}',
                  style: const TextStyle(color: AppColors.success, fontWeight: FontWeight.w500),
                ),
              ],
            ],
          ),
        ),
        const SizedBox(height: 12),
        SectionCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SectionTitle('Pickup from', style: AppTextStyles.itemTitle, padding: EdgeInsets.only(bottom: 10)),
              LocationTile(leading: const StoreTile(), location: order.pickup),
              const Padding(padding: EdgeInsets.symmetric(vertical: 14), child: Divider()),
              const SectionTitle('Deliver to', style: AppTextStyles.itemTitle, padding: EdgeInsets.only(bottom: 10)),
              LocationTile(
                leading: const PinTile(),
                location: order.drop,
                extra: Row(
                  children: [
                    Container(
                      width: 7,
                      height: 7,
                      decoration: const BoxDecoration(color: AppColors.success, shape: BoxShape.circle),
                    ),
                    const SizedBox(width: 6),
                    Text(Formatters.distance(order.distanceKm), style: AppTextStyles.caption),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 12),
        ItemsCard(order: order),
      ],
    );
  }
}

class _Actions extends StatelessWidget {
  const _Actions({required this.order, required this.state});

  final Order order;
  final OrderDetailState state;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<OrderDetailBloc>();
    final busy = state.actionStatus.isLoading;

    switch (order.status) {
      case OrderStatus.newOrder:
        return Row(
          children: [
            Expanded(
              flex: 2,
              child: AppButton(
                label: 'Reject',
                outlined: true,
                color: AppColors.danger,
                loading: busy && state.action == OrderAction.reject,
                onPressed: busy
                    ? null
                    : () async {
                        final reason = await RejectSheet.show(context);
                        if (reason != null) bloc.add(OrderDetailEvent.rejectRequested(reason));
                      },
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              flex: 3,
              child: AppButton(
                label: 'Accept Order',
                loading: busy && state.action == OrderAction.accept,
                onPressed: busy ? null : () => bloc.add(const OrderDetailEvent.acceptRequested()),
              ),
            ),
          ],
        );
      case OrderStatus.accepted:
        return AppButton(
          label: 'Navigate to Pickup',
          icon: Icons.navigation_rounded,
          onPressed: () => context.push(AppRoutes.navigate(order.id, NavigationTarget.pickup)),
        );
      case OrderStatus.pickedUp:
        return AppButton(
          label: 'Navigate to Delivery',
          icon: Icons.navigation_rounded,
          onPressed: () => context.push(AppRoutes.navigate(order.id, NavigationTarget.delivery)),
        );
      default:
        return const SizedBox.shrink();
    }
  }
}
