import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:servy_app2/src/features/authentication/screens/splash_screen/splash_screens.dart';
import 'package:servy_app2/src/utils/theme/theme.dart';

void main() {
  runApp(const Servy_app());
}

class Servy_app extends StatelessWidget {
  const Servy_app({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: TApptheme.lightTheme,
      darkTheme: TApptheme.darkTheme,
      defaultTransition: Transition.rightToLeftWithFade,
      transitionDuration: const Duration(milliseconds: 500),
      home: SplshScreen(),
    );
  }
}
