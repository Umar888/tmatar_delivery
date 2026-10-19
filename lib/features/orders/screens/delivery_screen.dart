import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:signature/signature.dart';

import '../../../core/enums.dart';
import '../../../core/router/app_router.dart';
import '../../../core/theme/theme.dart';
import '../../../core/utils/formatters.dart';
import '../../../data/models/order.dart';
import '../../../shared/widgets/widgets.dart';
import '../bloc/delivery_bloc.dart';
import '../widgets/location_tile.dart';

class DeliveryScreen extends StatefulWidget {
  const DeliveryScreen({super.key});

  @override
  State<DeliveryScreen> createState() => _DeliveryScreenState();
}

class _DeliveryScreenState extends State<DeliveryScreen> {
  late final _signature = SignatureController(
    penStrokeWidth: 3,
    penColor: AppColors.signatureInk,
    exportBackgroundColor: Colors.white,
    onDrawEnd: () => context.read<DeliveryBloc>().add(const DeliveryEvent.signatureChanged(true)),
  );

  @override
  void dispose() {
    _signature.dispose();
    super.dispose();
  }

  Future<void> _confirm() async {
    final bytes = await _signature.toPngBytes();
    if (!mounted || bytes == null) return;
    context.read<DeliveryBloc>().add(DeliveryEvent.confirmed(base64Encode(bytes)));
  }

  void _clear() {
    _signature.clear();
    context.read<DeliveryBloc>().add(const DeliveryEvent.signatureChanged(false));
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DeliveryBloc, DeliveryState>(
      listenWhen: (p, c) => LoadStatus.settled(p.actionStatus, c.actionStatus),
      listener: (context, state) {
        if (state.actionStatus.isFailure) {
          showAppSnackBar(context, state.actionMessage ?? '', error: true);
        } else {
          _DeliveredDialog.show(context, state.order!);
        }
      },
      builder: (context, state) {
        final order = state.order;
        return Scaffold(
          appBar: AppBar(title: Text(state.id.isEmpty ? 'Delivery' : 'Order ${Formatters.orderCode(state.id)}')),
          body: switch (state.status) {
            LoadStatus.failure => ErrorView(
              message: state.message ?? '',
              onRetry: () => context.read<DeliveryBloc>().add(DeliveryEvent.started(state.id)),
            ),
            LoadStatus.success when order != null => ListView(
              padding: const EdgeInsets.all(16),
              children: [
                SectionCard(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Delivery Confirmation', style: AppTextStyles.cardTitle),
                      const SizedBox(height: 2),
                      const Text(
                        'Hand over the items and collect the customer signature',
                        style: AppTextStyles.caption,
                      ),
                      const Padding(padding: EdgeInsets.symmetric(vertical: 14), child: Divider()),
                      LocationTile(leading: const PinTile(), location: order.drop),
                    ],
                  ),
                ),
                if (state.needsCash) ...[
                  const SizedBox(height: 12),
                  _CashCard(
                    amount: order.totalAmount,
                    collected: state.cashCollected,
                    onChanged: (v) => context.read<DeliveryBloc>().add(DeliveryEvent.cashToggled(v)),
                  ),
                ],
                const SizedBox(height: 12),
                SectionCard(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Expanded(child: Text('Customer Signature', style: AppTextStyles.cardTitle)),
                          TextButton.icon(
                            onPressed: state.hasSignature ? _clear : null,
                            icon: const Icon(Icons.refresh_rounded, size: 18),
                            label: const Text('Clear'),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      ClipRRect(
                        borderRadius: AppRadius.md,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: state.hasSignature ? AppColors.success : AppColors.border,
                              width: 1.5,
                            ),
                            borderRadius: AppRadius.md,
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              if (!state.hasSignature)
                                const IgnorePointer(
                                  child: Column(
                                    children: [
                                      Icon(Icons.draw_outlined, color: AppColors.border, size: 36),
                                      SizedBox(height: 6),
                                      Text('Ask the customer to sign here', style: AppTextStyles.secondary),
                                    ],
                                  ),
                                ),
                              Signature(controller: _signature, height: 200, backgroundColor: Colors.transparent),
                            ],
                          ),
                        ),
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
                    label: 'Confirm Delivery',
                    loading: state.actionStatus.isLoading,
                    onPressed: state.canConfirm ? _confirm : null,
                  ),
                ),
        );
      },
    );
  }
}

class _CashCard extends StatelessWidget {
  const _CashCard({required this.amount, required this.collected, required this.onChanged});

  final double amount;
  final bool collected;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: collected ? AppColors.successLight : AppColors.warningLight,
      borderRadius: AppRadius.lg,
      child: InkWell(
        borderRadius: AppRadius.lg,
        onTap: () => onChanged(!collected),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 12, 8, 12),
          child: Row(
            children: [
              Icon(Icons.payments_outlined, color: collected ? AppColors.success : AppColors.warning),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Collect ${Formatters.currency(amount)} in cash', style: AppTextStyles.itemTitle),
                    const Text('Cash on Delivery order', style: AppTextStyles.caption),
                  ],
                ),
              ),
              Checkbox(value: collected, activeColor: AppColors.success, onChanged: (v) => onChanged(v ?? false)),
            ],
          ),
        ),
      ),
    );
  }
}

class _DeliveredDialog extends StatelessWidget {
  const _DeliveredDialog({required this.order});

  final Order order;

  static Future<void> show(BuildContext context, Order order) => showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (_) => _DeliveredDialog(order: order),
  );

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: AppRadius.xl),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24, 28, 24, 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TweenAnimationBuilder<double>(
              tween: Tween(begin: 0.4, end: 1),
              duration: const Duration(milliseconds: 500),
              curve: Curves.elasticOut,
              builder: (_, scale, child) => Transform.scale(scale: scale, child: child),
              child: const IconBadge(
                icon: Icons.check_circle_rounded,
                color: AppColors.success,
                background: AppColors.successLight,
                size: 84,
                iconSize: 60,
              ),
            ),
            const SizedBox(height: 18),
            const Text('Order Delivered!', style: AppTextStyles.heading),
            const SizedBox(height: 6),
            Text(
              '${Formatters.orderCode(order.id)} was delivered to ${order.drop.name}',
              textAlign: TextAlign.center,
              style: AppTextStyles.secondary,
            ),
            const SizedBox(height: 18),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(color: AppColors.background, borderRadius: AppRadius.md),
              child: Row(
                children: [
                  const Text('You earned', style: AppTextStyles.secondary),
                  const Spacer(),
                  Text(
                    '+${Formatters.currency(order.deliveryFee)}',
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w800, color: AppColors.success),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            AppButton(label: 'Back to Home', onPressed: () => context.go(AppRoutes.home)),
          ],
        ),
      ),
    );
  }
}
