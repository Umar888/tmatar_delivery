import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../core/enums.dart';
import '../../../core/router/app_router.dart';
import '../../../core/theme/theme.dart';
import '../../../core/utils/formatters.dart';
import '../../../data/models/earnings_summary.dart';
import '../../../shared/widgets/widgets.dart';
import '../bloc/earnings_bloc.dart';
import '../widgets/earnings_chart.dart';

class EarningsScreen extends StatelessWidget {
  const EarningsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<EarningsBloc>();
    return Scaffold(
      appBar: AppBar(title: const Text('Earnings')),
      body: BlocBuilder<EarningsBloc, EarningsState>(
        builder: (context, state) {
          final summary = state.summary;
          return ListView(
            padding: const EdgeInsets.all(16),
            children: [
              SegmentedTabs(
                labels: [for (final p in EarningsPeriod.values) p.label],
                selected: state.period.index,
                onChanged: (i) => bloc.add(EarningsEvent.periodChanged(EarningsPeriod.values[i])),
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  IconButton(
                    onPressed: () => bloc.add(const EarningsEvent.shifted(forward: false)),
                    icon: const Icon(Icons.chevron_left_rounded),
                  ),
                  Expanded(
                    child: Text(
                      summary?.rangeLabel ?? Formatters.date(state.date),
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                  ),
                  IconButton(
                    onPressed: state.canGoForward ? () => bloc.add(const EarningsEvent.shifted(forward: true)) : null,
                    icon: const Icon(Icons.chevron_right_rounded),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              if (state.status.isFailure)
                ErrorView(message: state.message ?? '', onRetry: () => bloc.add(const EarningsEvent.started()))
              else if (summary == null)
                const Padding(padding: EdgeInsets.only(top: 80), child: LoadingView())
              else
                AnimatedOpacity(
                  opacity: state.status.isLoading ? 0.5 : 1,
                  duration: const Duration(milliseconds: 200),
                  child: _Summary(summary: summary),
                ),
            ],
          );
        },
      ),
    );
  }
}

class _Summary extends StatelessWidget {
  const _Summary({required this.summary});

  final EarningsSummary summary;

  @override
  Widget build(BuildContext context) {
    final avg = summary.completedOrders == 0 ? 0 : summary.total / summary.completedOrders;
    return Column(
      children: [
        SectionCard(
          padding: const EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Total Earnings',
                style: TextStyle(color: AppColors.textSecondary, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 4),
              Text(
                Formatters.currency(summary.total),
                style: const TextStyle(fontSize: 32, fontWeight: FontWeight.w800),
              ),
              const SizedBox(height: 20),
              EarningsChart(bars: summary.bars),
            ],
          ),
        ),
        const SizedBox(height: 12),
        SectionCard(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
          child: Column(
            children: [
              _StatRow(
                icon: Icons.check_circle_outline_rounded,
                color: AppColors.success,
                label: 'Completed Orders',
                value: '${summary.completedOrders}',
              ),
              const Divider(),
              _StatRow(
                icon: Icons.cancel_outlined,
                color: AppColors.danger,
                label: 'Cancelled Orders',
                value: '${summary.cancelledOrders}',
              ),
              const Divider(),
              _StatRow(
                icon: Icons.route_outlined,
                color: AppColors.info,
                label: 'Total Distance',
                value: Formatters.distance(summary.distanceKm),
              ),
              const Divider(),
              _StatRow(
                icon: Icons.trending_up_rounded,
                color: AppColors.primary,
                label: 'Avg. per Order',
                value: Formatters.currency(avg),
              ),
            ],
          ),
        ),
        const SizedBox(height: 12),
        TextButton.icon(
          onPressed: () => context.push(AppRoutes.history),
          icon: const Icon(Icons.history_rounded),
          label: const Text('View order history'),
        ),
      ],
    );
  }
}

class _StatRow extends StatelessWidget {
  const _StatRow({required this.icon, required this.color, required this.label, required this.value});

  final IconData icon;
  final Color color;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(7),
            decoration: BoxDecoration(color: color.withValues(alpha: 0.12), borderRadius: AppRadius.sm),
            child: Icon(icon, color: color, size: 18),
          ),
          const SizedBox(width: 12),
          Expanded(child: Text(label, style: const TextStyle(fontSize: 15))),
          Text(value, style: AppTextStyles.itemTitle),
        ],
      ),
    );
  }
}
