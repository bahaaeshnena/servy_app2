import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:servy_app2/src/features/authentication/screens/splash_screens.dart';
import 'package:servy_app2/src/utils/theme/theme.dart';

void main() {
  runApp(const Servy_app());
}

class Servy_app extends StatelessWidget {
  const Servy_app({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: TApptheme.lightTheme,
      darkTheme: TApptheme.darkTheme,
      themeMode: ThemeMode.light,
      home: SplshScreen(),
    );
  }
}
