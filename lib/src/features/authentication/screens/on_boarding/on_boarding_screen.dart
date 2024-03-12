import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:servy_app2/src/constants/colors.dart';
import 'package:servy_app2/src/constants/image_string.dart';
import 'package:servy_app2/src/constants/text.dart';
import 'package:servy_app2/src/features/authentication/models/model_on_boarding.dart';
import 'package:servy_app2/src/features/authentication/screens/on_boarding/on_boarding_page_widget.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final pages = [
      OnBoardingPageWidget(
        model: OnBoardingModel(
          image: tOnBoardingImage1,
          title: tOnBoardingTitle1,
          subTitle: tOnBoardingSubTitle1,
          counterText: tOnBoardingCounter1,
          bgColor: tOnBoardingPag1eColor,
          height: size.height,
        ),
      ),
      OnBoardingPageWidget(
        model: OnBoardingModel(
          image: tOnBoardingImage2,
          title: tOnBoardingTitle2,
          subTitle: tOnBoardingSubTitle2,
          counterText: tOnBoardingCounter2,
          bgColor: tOnBoardingPag2eColor,
          height: size.height,
        ),
      ),
      OnBoardingPageWidget(
        model: OnBoardingModel(
          image: tOnBoardingImage3,
          title: tOnBoardingTitle3,
          subTitle: tOnBoardingSubTitle3,
          counterText: tOnBoardingCounter3,
          bgColor: tOnBoardingPag3eColor,
          height: size.height,
        ),
      ),
      OnBoardingPageWidget(
        model: OnBoardingModel(
          image: tOnBoardingImage4,
          title: tOnBoardingTitle4,
          subTitle: tOnBoardingSubTitle4,
          counterText: tOnBoardingCounter4,
          bgColor: tOnBoardingPag4eColor,
          height: size.height,
        ),
      ),
    ];
    return Scaffold(
      body: Stack(
        children: [
          LiquidSwipe(pages: pages),
        ],
      ),
    );
  }
}
