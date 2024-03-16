import 'package:get/get.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';
import 'package:servy_app2/src/constants/colors.dart';
import 'package:servy_app2/src/constants/image_string.dart';
import 'package:servy_app2/src/constants/text.dart';
import 'package:servy_app2/src/features/authentication/models/model_on_boarding.dart';
import 'package:servy_app2/src/features/authentication/screens/on_boarding/on_boarding_page_widget.dart';
import 'package:servy_app2/src/features/authentication/screens/welcome/welcome_screen.dart';

class OnBoardingController extends GetxController {
  final controller = LiquidController();

  Rx<int> currentPage = 0.obs;

  final pages = [
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: tOnBoardingImage1,
        title: tOnBoardingTitle1,
        subTitle: tOnBoardingSubTitle1,
        counterText: tOnBoardingCounter1,
        bgColor: tOnBoardingPag1eColor,
      ),
    ),
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: tOnBoardingImage2,
        title: tOnBoardingTitle2,
        subTitle: tOnBoardingSubTitle2,
        counterText: tOnBoardingCounter2,
        bgColor: tOnBoardingPag2eColor,
      ),
    ),
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: tOnBoardingImage3,
        title: tOnBoardingTitle3,
        subTitle: tOnBoardingSubTitle3,
        counterText: tOnBoardingCounter3,
        bgColor: tOnBoardingPag3eColor,
      ),
    ),
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: tOnBoardingImage4,
        title: tOnBoardingTitle4,
        subTitle: tOnBoardingSubTitle4,
        counterText: tOnBoardingCounter4,
        bgColor: tOnBoardingPag4eColor,
      ),
    ),
  ];

  // skip() => controller.jumpToPage(page: 3);

  skip() => Get.to(() => const WelcomeScreen());
  animateToNextSlide() {
    int nextPage = controller.currentPage + 1;
    controller.animateToPage(page: nextPage);
  }

  onPageChangeCallback(int activePageIndex) =>
      currentPage.value = activePageIndex;
}
