import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTextStyles {
  AppTextStyles._();

  static const heading = TextStyle(fontSize: 22, fontWeight: FontWeight.w800);
  static const title = TextStyle(fontSize: 20, fontWeight: FontWeight.w700);
  static const sectionTitle = TextStyle(fontSize: 17, fontWeight: FontWeight.w700);
  static const cardTitle = TextStyle(fontSize: 16, fontWeight: FontWeight.w700);
  static const itemTitle = TextStyle(fontSize: 15, fontWeight: FontWeight.w700);
  static const label = TextStyle(fontWeight: FontWeight.w600);
  static const secondary = TextStyle(color: AppColors.textSecondary);
  static const caption = TextStyle(fontSize: 13, color: AppColors.textSecondary);
  static const small = TextStyle(fontSize: 12, color: AppColors.textSecondary);
  static const overline = TextStyle(
    fontSize: 12,
    letterSpacing: 0.8,
    fontWeight: FontWeight.w700,
    color: AppColors.textSecondary,
  );
}
