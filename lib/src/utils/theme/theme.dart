import 'package:flutter/material.dart';

class TApptheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primarySwatch: const MaterialColor(
      0xFF2AAAB1,
      <int, Color>{
        50: Color(0xFFE0F2F1),
        100: Color(0xFFB2DFDB),
        200: Color(0xFF80CBC4),
        300: Color(0xFF4DB6AC),
        400: Color(0xFF26A69A),
        500: Color(0xFF2AAAB1),
        600: Color(0xFF00897B),
        700: Color(0xFF00796B),
        800: Color(0xFF00695C),
        900: Color(0xFF004D40),
      },
    ),
  );
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: const MaterialColor(
      0xFF4D98C1,
      <int, Color>{
        50: Color(0xFFE1F5FE),
        100: Color(0xFFB3E5FC),
        200: Color(0xFF81D4FA),
        300: Color(0xFF4FC3F7),
        400: Color(0xFF29B6F6),
        500: Color(0xFF4D98C1),
        600: Color(0xFF039BE5),
        700: Color(0xFF0288D1),
        800: Color(0xFF0277BD),
        900: Color(0xFF01579B),
      },
    ),
  );
}
