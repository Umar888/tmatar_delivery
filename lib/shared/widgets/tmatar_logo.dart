import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/constants/app_assets.dart';
import '../../core/theme/app_colors.dart';

class TmatarLogo extends StatelessWidget {
  const TmatarLogo({super.key, this.size = 96, this.showTagline = true});

  final double size;
  final bool showTagline;

  @override
  Widget build(BuildContext context) {
    final wordSize = size * 0.38;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(AppAssets.logoMark, width: size, height: size),
        const SizedBox(height: 8),
        Text.rich(
          TextSpan(
            style: TextStyle(fontSize: wordSize, fontWeight: FontWeight.w800, letterSpacing: -0.5),
            children: const [
              TextSpan(
                text: 'Tmatar ',
                style: TextStyle(color: AppColors.brandRed),
              ),
              TextSpan(
                text: 'Mart',
                style: TextStyle(color: AppColors.brandGreen),
              ),
            ],
          ),
        ),
        if (showTagline) ...[
          const SizedBox(height: 6),
          Text(
            'Taaza Har Baar\nSeedha Ghar Tak',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: wordSize * 0.48,
              height: 1.3,
              fontWeight: FontWeight.w500,
              color: AppColors.textPrimary,
            ),
          ),
        ],
      ],
    );
  }
}
