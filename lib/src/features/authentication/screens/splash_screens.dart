import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:servy_app2/src/constants/colors.dart';
import 'package:servy_app2/src/constants/image_string.dart';
import 'package:servy_app2/src/features/authentication/controllers/splash_screen_controller.dart';

class SplshScreen extends StatelessWidget {
  SplshScreen({super.key});

  final splashController = Get.put(SplashScreenController());
  @override
  Widget build(BuildContext context) {
    splashController.startAnimation();
    return Scaffold(
      body: Stack(
        children: [
          Obx(
            () => AnimatedPositioned(
                duration: const Duration(milliseconds: 1600),
                top: splashController.animate.value ? 0 : -30,
                left: splashController.animate.value ? 0 : -30,
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(78),
                      bottomRight: Radius.circular(43),
                      topLeft: Radius.circular(61),
                      topRight: Radius.circular(63),
                    ),
                    color: KPrimaryColorGreen,
                  ),
                  width: 120,
                  height: 120,
                )),
          ),
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              top: 220,
              left: splashController.animate.value ? 30 : -40,
              child: AnimatedOpacity(
                duration: const Duration(microseconds: 1600),
                opacity: splashController.animate.value ? 1 : 0,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Discover a new world\n",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w900,
                          fontFamily: 'Simonetta\n'),
                    ),
                    Text(
                      "possibilities and innovation!\n",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w900,
                          fontFamily: 'Simonetta'),
                    ),
                    Text(
                      "Join the app for a unique experience",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          fontFamily: 'Simonetta'),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 2400),
              bottom: splashController.animate.value ? 100 : 0,
              left: 0,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 2000),
                opacity: splashController.animate.value ? 1 : 0,
                child: const Image(
                  width: 400,
                  image: AssetImage(bSplshTop),
                ),
              ),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 2400),
              bottom: splashController.animate.value ? 60 : 0,
              right: 44,
              child: Container(
                decoration: BoxDecoration(
                    color: KPrimaryColorGreen,
                    borderRadius: BorderRadius.circular(33)),
                width: 30,
                height: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
