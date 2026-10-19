import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../core/enums.dart';
import '../../../core/router/app_router.dart';
import '../../../core/theme/theme.dart';
import '../../../core/utils/formatters.dart';
import '../../../shared/widgets/widgets.dart';
import '../bloc/pickup_bloc.dart';
import '../widgets/location_tile.dart';

class PickupVerifyScreen extends StatelessWidget {
  const PickupVerifyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PickupBloc, PickupState>(
      listenWhen: (p, c) => LoadStatus.settled(p.actionStatus, c.actionStatus),
      listener: (context, state) {
        final failed = state.actionStatus.isFailure;
        showAppSnackBar(context, state.actionMessage ?? '', error: failed);
        if (!failed) context.pushReplacement(AppRoutes.navigate(state.id, NavigationTarget.delivery));
      },
      builder: (context, state) {
        final order = state.order;
        return Scaffold(
          appBar: AppBar(title: Text(state.id.isEmpty ? 'Pickup' : 'Order ${Formatters.orderCode(state.id)}')),
          body: switch (state.status) {
            LoadStatus.failure => ErrorView(
              message: state.message ?? '',
              onRetry: () => context.read<PickupBloc>().add(PickupEvent.started(state.id)),
            ),
            LoadStatus.success when order != null => ListView(
              padding: const EdgeInsets.all(16),
              children: [
                _Banner(done: state.allChecked, checked: state.checkedIds.length, total: order.itemCount),
                const SizedBox(height: 12),
                SectionCard(
                  child: LocationTile(leading: const StoreTile(), location: order.pickup),
                ),
                const SizedBox(height: 12),
                SectionCard(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.fromLTRB(16, 8, 16, 4),
                        child: Text('Tap each item once it is in your bag', style: AppTextStyles.caption),
                      ),
                      for (final item in order.items)
                        CheckboxListTile(
                          value: state.checkedIds.contains(item.id),
                          onChanged: (_) => context.read<PickupBloc>().add(PickupEvent.itemToggled(item.id)),
                          activeColor: AppColors.success,
                          controlAffinity: ListTileControlAffinity.trailing,
                          checkboxShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                          secondary: ProductImage(path: item.image),
                          title: Text('${item.name} ${item.unit}', style: AppTextStyles.label),
                          subtitle: Text('Qty x${item.quantity}'),
                        ),
                    ],
                  ),
                ),
              ],
            ),
            _ => const LoadingView(),
          },
          bottomNavigationBar: order == null
              ? null
              : BottomBar(
                  child: AppButton(
                    label: 'Mark as Picked Up',
                    loading: state.actionStatus.isLoading,
                    onPressed: state.allChecked
                        ? () => context.read<PickupBloc>().add(const PickupEvent.confirmed())
                        : null,
                  ),
                ),
        );
      },
    );
  }
}

class _Banner extends StatelessWidget {
  const _Banner({required this.done, required this.checked, required this.total});

  final bool done;
  final int checked;
  final int total;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: done ? AppColors.successLight : AppColors.warningLight,
        borderRadius: AppRadius.lg,
      ),
      child: Row(
        children: [
          IconBadge(
            icon: done ? Icons.check_rounded : Icons.inventory_2_outlined,
            color: done ? AppColors.success : AppColors.warning,
            solid: true,
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Pickup Verification', style: AppTextStyles.cardTitle),
                const SizedBox(height: 2),
                Text(
                  done ? 'Items collected successfully' : '$checked of $total items checked',
                  style: TextStyle(
                    color: done ? AppColors.success : AppColors.textSecondary,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
