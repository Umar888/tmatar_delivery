import 'package:flutter/material.dart';

class AppRadius {
  AppRadius._();

  static const xs = BorderRadius.all(Radius.circular(8));
  static const sm = BorderRadius.all(Radius.circular(10));
  static const md = BorderRadius.all(Radius.circular(12));
  static const lg = BorderRadius.all(Radius.circular(16));
  static const xl = BorderRadius.all(Radius.circular(24));
  static const sheet = BorderRadius.vertical(top: Radius.circular(24));
}

class AppShadows {
  AppShadows._();

  static const card = [BoxShadow(color: Color(0x0D1F2430), blurRadius: 12, offset: Offset(0, 4))];
  static const bottomBar = [BoxShadow(color: Color(0x141F2430), blurRadius: 16, offset: Offset(0, -4))];
  static const sheet = [BoxShadow(color: Color(0x261F2430), blurRadius: 20, offset: Offset(0, -4))];
  static const marker = [BoxShadow(color: Colors.black26, blurRadius: 6)];
}
