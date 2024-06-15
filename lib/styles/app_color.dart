import 'package:flutter/material.dart';

class AppColor {
  static const background = Color.fromARGB(255, 30, 201, 246);
  static const primary = Color.fromARGB(255, 230, 230, 230);
  static const secondary = Color.fromARGB(255, 16, 26, 70);
  static const disabled = Color.fromARGB(255, 167, 167, 167);
  static const disabledLight = Color.fromARGB(255, 209, 209, 209);
  static const gradientBackground = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment(0.1, 1),
      colors: <Color>[
        Color.fromARGB(255, 29, 48, 133),
        Color.fromARGB(255, 55, 240, 253),
      ]);
}
