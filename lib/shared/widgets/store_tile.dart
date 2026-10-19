import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/constants/app_assets.dart';
import '../../core/theme/app_colors.dart';

class StoreTile extends StatelessWidget {
  const StoreTile({super.key, this.size = 44});

  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      padding: EdgeInsets.all(size * 0.2),
      decoration: BoxDecoration(color: AppColors.primaryLight, borderRadius: BorderRadius.circular(size * 0.28)),
      child: SvgPicture.asset(AppAssets.store),
    );
  }
}
