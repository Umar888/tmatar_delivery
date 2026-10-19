import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/theme/app_colors.dart';
import '../../core/theme/app_dimens.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({super.key, required this.path, this.size = 44});

  final String path;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      padding: EdgeInsets.all(size * 0.12),
      decoration: BoxDecoration(color: AppColors.background, borderRadius: AppRadius.md),
      child: SvgPicture.asset(
        path,
        placeholderBuilder: (_) => const Icon(Icons.shopping_basket_outlined, color: AppColors.textSecondary),
      ),
    );
  }
}
