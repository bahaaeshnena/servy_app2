import 'package:flutter/material.dart';
import 'package:servy_app2/src/utils/theme/widget_themes/elevated_button_theme.dart';
import 'package:servy_app2/src/utils/theme/widget_themes/outlined_button_theme.dart';

class TApptheme {
  TApptheme._();

  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      outlinedButtonTheme: ToutLineButtonTheme.lightOutlineButtonTheme,
      elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme);

  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      outlinedButtonTheme: ToutLineButtonTheme.darkOutlineButtonTheme,
      elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme);
}
