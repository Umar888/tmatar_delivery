import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:signature/signature.dart';
import 'package:tmatar_delivery/core/constants/app_constants.dart';
import 'package:tmatar_delivery/features/auth/widgets/otp_input.dart';
import 'package:tmatar_delivery/main.dart' as app;

// --dart-define=DEMO=true slows every step down for screen recordings
const _demo = bool.fromEnvironment('DEMO');

void main() {
  final binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  // pumpAndSettle never settles with spinners and the otp timer around
  Future<void> wait(WidgetTester tester, [int ms = 1500]) async {
    final total = _demo ? ms * 2 : ms;
    for (var i = 0; i < total ~/ 100; i++) {
      await tester.pump(const Duration(milliseconds: 100));
    }
  }

  Future<void> shot(String name) => binding.takeScreenshot(name);

  testWidgets('partner logs in and delivers an order end to end', (tester) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();

    app.main();
    // android only captures screenshots from an image surface
    if (Platform.isAndroid) await binding.convertFlutterSurfaceToImage();
    await wait(tester, 1000);
    await shot('01_splash');

    await wait(tester, 2500);
    expect(find.text('Send OTP'), findsOneWidget);
    await tester.enterText(find.byType(TextField), '9876543210');
    await wait(tester, 300);
    await shot('02_login');
    await tester.tap(find.text('Send OTP'));
    await wait(tester);

    expect(find.text('Verify your number'), findsOneWidget);
    await shot('03_otp');
    await tester.enterText(
      find.descendant(of: find.byType(OtpInput), matching: find.byType(EditableText)),
      AppConstants.demoOtp,
    );
    await wait(tester, 3000);

    expect(find.text('Recent Orders'), findsOneWidget);
    await shot('04_home');

    await tester.fling(find.byType(ListView).first, const Offset(0, 400), 1200);
    await wait(tester, 3000);
    expect(find.byType(RefreshProgressIndicator), findsNothing);

    await tester.tap(find.text('Orders').last);
    await wait(tester, 2000);
    expect(find.textContaining('Completed ('), findsOneWidget);
    await shot('05_orders');

    await tester.tap(find.text('#TM12567'));
    await wait(tester, 2000);
    await shot('06_order_detail');

    // the simulator has no dialer, so the number gets copied instead
    if (Platform.isIOS) {
      await tester.tap(find.byTooltip('Call').first);
      await wait(tester, 1500);
      expect(find.textContaining("Calling isn't available"), findsOneWidget);
      await wait(tester, 2500);
    }

    await tester.tap(find.text('Accept Order'));
    await wait(tester, 2000);
    expect(find.text('Navigate to Pickup'), findsOneWidget);
    await shot('07_accepted');

    await tester.tap(find.text('Navigate to Pickup'));
    await wait(tester, 5000);
    await shot('08_navigate_pickup');

    await tester.tap(find.text('Reached Store'));
    await wait(tester, 2000);
    await shot('09_pickup_verify');
    for (final tile in find.byType(CheckboxListTile).evaluate().toList()) {
      await tester.tap(find.byWidget(tile.widget));
      await wait(tester, 300);
    }
    await shot('10_pickup_checked');

    await tester.tap(find.text('Mark as Picked Up'));
    await wait(tester, 5000);
    await shot('11_navigate_delivery');

    await tester.tap(find.text('Reached'));
    await wait(tester, 2000);
    await shot('12_delivery');

    await tester.tap(find.byType(Checkbox));
    final pad = tester.getRect(find.byType(Signature));
    await tester.timedDragFrom(
      pad.centerLeft + const Offset(40, 10),
      const Offset(80, -40),
      const Duration(milliseconds: 300),
    );
    await tester.timedDragFrom(
      pad.center + const Offset(-20, 0),
      const Offset(90, 30),
      const Duration(milliseconds: 300),
    );
    await wait(tester, 500);
    await shot('13_signed');

    await tester.tap(find.text('Confirm Delivery'));
    await wait(tester, 2000);
    expect(find.text('Order Delivered!'), findsOneWidget);
    await shot('14_delivered');

    await tester.tap(find.text('Back to Home'));
    await wait(tester, 2500);
    await shot('15_home_after');

    await tester.tap(find.text('Earnings').last);
    await wait(tester, 2000);
    await shot('16_earnings');
    await tester.tap(find.text('Weekly'));
    await wait(tester, 2000);
    await shot('17_earnings_weekly');

    await tester.tap(find.text('Profile').last);
    await wait(tester, 2000);
    await shot('18_profile');

    await tester.tap(find.text('Order History'));
    await wait(tester, 2000);
    await shot('19_history');
    await tester.pageBack();
    await wait(tester, 800);

    await tester.tap(find.text('Personal Information'));
    await wait(tester, 2000);
    await shot('20_edit_profile');
  });
}
