import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../core/constants/app_assets.dart';
import '../../../core/router/app_router.dart';
import '../../../core/theme/theme.dart';
import '../../../shared/widgets/widgets.dart';
import '../bloc/home_bloc.dart';
import '../widgets/active_order_card.dart';
import '../widgets/earnings_card.dart';
import '../widgets/online_card.dart';
import '../widgets/stat_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeBloc, HomeState>(
      listenWhen: (p, c) => p.toggleStatus != c.toggleStatus && c.toggleMessage != null,
      listener: (context, state) {
        if (state.toggleStatus.isLoading) return;
        showAppSnackBar(context, state.toggleMessage!, error: state.toggleStatus.isFailure);
      },
      child: Scaffold(
        body: SafeArea(
          child: BlocBuilder<HomeBloc, HomeState>(
            buildWhen: (p, c) => p.status != c.status || p.profile == null,
            builder: (context, state) {
              if (state.status.isFailure && state.profile == null) {
                return ErrorView(
                  message: state.message ?? '',
                  onRetry: () => context.read<HomeBloc>().add(const HomeEvent.started()),
                );
              }
              if (state.profile == null) return const LoadingView();
              return const _Dashboard();
            },
          ),
        ),
      ),
    );
  }
}

class _Dashboard extends StatelessWidget {
  const _Dashboard();

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<HomeBloc>();
    return RefreshIndicator(
      onRefresh: () async {
        bloc.add(const HomeEvent.refreshed());
        await bloc.stream.firstWhere((s) => !s.refreshing);
      },
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          final profile = state.profile!;
          final active = state.activeOrder;
          final recent = state.recentOrders;
          return ListView(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 24),
            children: [
              _Header(name: profile.name, rating: profile.rating),
              const SizedBox(height: 18),
              OnlineCard(
                online: state.isOnline,
                busy: state.toggleStatus.isLoading,
                onChanged: (v) => bloc.add(HomeEvent.onlineToggled(v)),
              ),
              const SizedBox(height: 14),
              Row(
                children: [
                  Expanded(
                    child: StatTile(
                      value: state.newOrders.length,
                      label: 'New Orders',
                      color: AppColors.primary,
                      background: AppColors.warningLight,
                      onTap: () => context.go(AppRoutes.orders),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: StatTile(
                      value: state.inProgress.length,
                      label: 'In Progress',
                      color: AppColors.info,
                      background: AppColors.infoLight,
                      onTap: () => context.go(AppRoutes.orders),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: StatTile(
                      value: state.today?.completedOrders ?? 0,
                      label: 'Completed',
                      color: AppColors.success,
                      background: AppColors.successLight,
                      onTap: () => context.push(AppRoutes.history),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 14),
              EarningsCard(amount: state.today?.total ?? 0, onTap: () => context.go(AppRoutes.earnings)),
              if (active != null) ...[
                const SizedBox(height: 22),
                const SectionTitle('Ongoing Delivery'),
                const SizedBox(height: 10),
                ActiveOrderCard(order: active),
              ],
              const SizedBox(height: 22),
              SectionTitle('Recent Orders', action: 'See all', onAction: () => context.go(AppRoutes.orders)),
              const SizedBox(height: 10),
              if (recent.isEmpty)
                const Padding(
                  padding: EdgeInsets.only(top: 12),
                  child: EmptyView(
                    title: 'No orders right now',
                    subtitle: 'New orders near you will show up here',
                    icon: Icons.delivery_dining_rounded,
                  ),
                )
              else
                for (final order in recent)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: OrderCard(order: order, onTap: () => context.push(AppRoutes.order(order.id))),
                  ),
            ],
          );
        },
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({required this.name, required this.rating});

  final String name;
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: AppColors.primary.withValues(alpha: 0.3), width: 2),
          ),
          child: ClipOval(child: SvgPicture.asset(AppAssets.avatar)),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: AppTextStyles.sectionTitle),
              const SizedBox(height: 2),
              Row(
                children: [
                  const Text('Delivery Partner', style: AppTextStyles.caption),
                  const SizedBox(width: 8),
                  const Icon(Icons.star_rounded, size: 15, color: AppColors.warning),
                  Text(rating.toStringAsFixed(1), style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600)),
                ],
              ),
            ],
          ),
        ),
        IconButton(
          onPressed: () => showAppSnackBar(context, "You're all caught up"),
          style: IconButton.styleFrom(backgroundColor: AppColors.surface),
          icon: const Icon(Icons.notifications_none_rounded),
        ),
      ],
    );
  }
}
