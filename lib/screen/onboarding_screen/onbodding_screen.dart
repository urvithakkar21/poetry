import 'package:flutter/material.dart';
import 'package:poetry/common/common_background.dart';
import 'package:poetry/screen/onboarding_screen/onboarding_controller.dart';
import 'package:poetry/screen/onboarding_screen/onboarding_widget.dart';
import 'package:poetry/utils/color_res.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingController());
    return commonBackground(
      child: Scaffold(
        backgroundColor: ColorRes.transparent,
        body: Center(
          child: Column(
            children: [
              onBoardingPageView(),
            ],
          ),
        ),
      ),
    );
  }
}
