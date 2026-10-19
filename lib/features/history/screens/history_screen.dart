import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../core/enums.dart';
import '../../../core/router/app_router.dart';
import '../../../core/theme/theme.dart';
import '../../../shared/widgets/widgets.dart';
import '../bloc/history_bloc.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<HistoryBloc>();
    return Scaffold(
      appBar: AppBar(title: const Text('Order History')),
      body: Column(
        children: [
          Container(
            color: AppColors.surface,
            padding: const EdgeInsets.fromLTRB(16, 4, 16, 12),
            child: BlocBuilder<HistoryBloc, HistoryState>(
              buildWhen: (p, c) => p.filter != c.filter,
              builder: (context, state) => SegmentedTabs(
                labels: [for (final f in HistoryFilter.values) f.label],
                selected: state.filter.index,
                onChanged: (i) => bloc.add(HistoryEvent.filterChanged(HistoryFilter.values[i])),
              ),
            ),
          ),
          Expanded(
            child: BlocBuilder<HistoryBloc, HistoryState>(
              builder: (context, state) {
                if (state.status.isFailure) {
                  return ErrorView(message: state.message ?? '', onRetry: () => bloc.add(const HistoryEvent.started()));
                }
                if (state.status != LoadStatus.success) return const LoadingView();
                if (state.orders.isEmpty) {
                  return const EmptyView(title: 'No orders here yet', icon: Icons.history_rounded);
                }
                return ListView.separated(
                  padding: const EdgeInsets.all(16),
                  itemCount: state.orders.length,
                  separatorBuilder: (_, _) => const SizedBox(height: 10),
                  itemBuilder: (context, i) {
                    final order = state.orders[i];
                    return OrderCard(
                      order: order,
                      showDate: true,
                      onTap: () => context.push(AppRoutes.order(order.id)),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
