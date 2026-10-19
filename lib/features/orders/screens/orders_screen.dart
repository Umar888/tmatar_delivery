import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../core/enums.dart';
import '../../../core/router/app_router.dart';
import '../../../core/theme/theme.dart';
import '../../../shared/widgets/widgets.dart';
import '../bloc/orders_bloc.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<OrdersBloc, OrdersState>(
      listenWhen: (p, c) => LoadStatus.settled(p.actionStatus, c.actionStatus),
      listener: (context, state) {
        final failed = state.actionStatus.isFailure;
        showAppSnackBar(context, state.actionMessage ?? '', error: failed);
        if (!failed) context.read<OrdersBloc>().add(const OrdersEvent.tabChanged(1));
      },
      child: Scaffold(
        appBar: AppBar(title: const Text('Orders')),
        body: Column(
          children: [
            Container(
              color: AppColors.surface,
              padding: const EdgeInsets.fromLTRB(16, 4, 16, 12),
              child: BlocBuilder<OrdersBloc, OrdersState>(
                buildWhen: (p, c) =>
                    p.tab != c.tab ||
                    p.newOrders.length != c.newOrders.length ||
                    p.inProgress.length != c.inProgress.length ||
                    p.completed.length != c.completed.length,
                builder: (context, state) => SegmentedTabs(
                  labels: [
                    'New (${state.newOrders.length})',
                    'In Progress (${state.inProgress.length})',
                    'Completed (${state.completed.length})',
                  ],
                  selected: state.tab,
                  onChanged: (i) => context.read<OrdersBloc>().add(OrdersEvent.tabChanged(i)),
                ),
              ),
            ),
            const Expanded(child: _OrderList()),
          ],
        ),
      ),
    );
  }
}

class _OrderList extends StatelessWidget {
  const _OrderList();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrdersBloc, OrdersState>(
      builder: (context, state) {
        final bloc = context.read<OrdersBloc>();
        if (state.status.isLoading || state.status == LoadStatus.initial) return const LoadingView();
        if (state.status.isFailure) {
          return ErrorView(message: state.message ?? '', onRetry: () => bloc.add(const OrdersEvent.started()));
        }

        final orders = state.visible;
        return RefreshIndicator(
          onRefresh: () async {
            bloc.add(const OrdersEvent.refreshed());
            await bloc.stream.firstWhere((s) => !s.refreshing);
          },
          child: orders.isEmpty
              ? ListView(
                  children: [
                    const SizedBox(height: 80),
                    EmptyView(
                      title: switch (state.tab) {
                        0 => 'No new orders',
                        1 => 'Nothing in progress',
                        _ => 'No completed orders yet',
                      },
                      subtitle: state.tab == 0 ? 'Stay online, new orders will appear here' : null,
                      icon: Icons.receipt_long_outlined,
                    ),
                  ],
                )
              : ListView.separated(
                  padding: const EdgeInsets.all(16),
                  itemCount: orders.length,
                  separatorBuilder: (_, _) => const SizedBox(height: 10),
                  itemBuilder: (context, i) {
                    final order = orders[i];
                    return OrderCard(
                      order: order,
                      showDate: state.tab == 2,
                      onTap: () => context.push(AppRoutes.order(order.id)),
                      trailing: state.tab == 0
                          ? _AcceptButton(
                              loading: state.acceptingId == order.id,
                              onPressed: () => bloc.add(OrdersEvent.acceptRequested(order.id)),
                            )
                          : null,
                    );
                  },
                ),
        );
      },
    );
  }
}

class _AcceptButton extends StatelessWidget {
  const _AcceptButton({required this.loading, required this.onPressed});

  final bool loading;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 84,
      height: 38,
      child: FilledButton(
        onPressed: loading ? null : onPressed,
        style: FilledButton.styleFrom(
          backgroundColor: AppColors.primary,
          disabledBackgroundColor: AppColors.primary,
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(borderRadius: AppRadius.sm),
        ),
        child: loading
            ? const SizedBox(
                width: 18,
                height: 18,
                child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white),
              )
            : const Text('Accept', style: AppTextStyles.label),
      ),
    );
  }
}
