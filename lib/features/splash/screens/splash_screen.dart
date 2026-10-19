import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../core/constants/app_assets.dart';
import '../../../core/constants/app_constants.dart';
import '../../../core/di/injection.dart';
import '../../../core/router/app_router.dart';
import '../../../core/storage/session_storage.dart';
import '../../../core/theme/theme.dart';
import '../../../shared/widgets/widgets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late final _controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 1200))..forward();
  late final _riderSlide = Tween(begin: const Offset(-0.6, 0), end: Offset.zero).animate(
    CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.2, 1, curve: Curves.easeOutCubic),
    ),
  );
  late final _fade = CurvedAnimation(
    parent: _controller,
    curve: const Interval(0, 0.6, curve: Curves.easeOut),
  );
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer(AppConstants.splashDuration, () {
      if (!mounted) return;
      context.go(sl<SessionStorage>().isLoggedIn.value ? AppRoutes.home : AppRoutes.login);
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.splashBackground,
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(flex: 2),
            FadeTransition(opacity: _fade, child: const TmatarLogo(size: 110)),
            const Spacer(),
            SlideTransition(
              position: _riderSlide,
              child: AspectRatio(
                aspectRatio: 400 / 320,
                child: SvgPicture.asset(AppAssets.splashRider, fit: BoxFit.cover),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
