import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:poetry/screen/login_screen/login_screen.dart';
import 'package:poetry/utils/string_res.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();
  int currentPage = 0;
  PageController pageController = PageController(
    initialPage: 0,
  );
  List<String> titles = [
    StringRes.Onboardingtitle1,
    StringRes.Onboardingtitle2,
    StringRes.Onboardingtitle3,
  ];
  List<String> descriptions = [
    StringRes.OnboardingDiscription1,
    StringRes.OnboardingDiscription2,
    StringRes.OnboardingDiscription3,
  ];
  List<String> images = [
    'assets/images/vector1.png',
    'assets/images/vector1.png',
    'assets/images/vector1.png'
  ];

  void pageViewNext(int index) {
    currentPage = index;
    update(["page"]);
  }

  void onTapSkip(index) {
    Get.offAll(() => LoginScreen());
    update(["page"]);
  }

  void onTapNext() {
    currentPage++;
    print(currentPage);
    if (currentPage == 3) {
      Get.offAll(() => LoginScreen());
    }
    pageController.animateToPage(currentPage,
        duration: Duration(seconds: 1), curve: Curves.ease);
    update(["page"]);
  }
}
