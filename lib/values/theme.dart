import 'dart:ui';
import 'package:flutter/material.dart';

class Theme {
  
  static const Color loginGradientStart = const Color(0xFFfbab66);
  static const Color loginGradientEnd = const Color(0xFFf7418c);

  /**
   * 渐变的背景色
   */
  static const LinearGradient linearGradient = const LinearGradient(
    colors: const [loginGradientStart, loginGradientEnd],
    stops: const [0.0, 1.0],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter
  );
}
