import 'dart:async';
import 'package:get/get.dart';
import 'package:poetry/screen/login_screen/login_screen.dart';
import 'package:poetry/screen/onboarding_screen/onbodding_screen.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    Timer(const Duration(seconds: 4), () {
      Get.off(() => OnboardingScreen());
    });
    super.onInit();
  }
}
