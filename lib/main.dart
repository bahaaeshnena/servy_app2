import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:servy_app2/src/features/authentication/screens/on_boarding/on_boarding_screen.dart';
import 'package:servy_app2/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'firebase_options.dart';
import 'package:servy_app2/src/respository/authentication_respository/authentication_respository.dart';
import 'package:servy_app2/src/utils/theme/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then((FirebaseApp value) => Get.put(AuthenticationRespository()));
  //.then((FirebaseApp value) => Get.put(AuthenticationRespository()))
  runApp(const ServyApp());
}

class ServyApp extends StatelessWidget {
  const ServyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: TApptheme.lightTheme,
      darkTheme: TApptheme.darkTheme,
      defaultTransition: Transition.rightToLeftWithFade,
      transitionDuration: const Duration(milliseconds: 500),
      // home: const WelcomeScreen(),
      home: const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
