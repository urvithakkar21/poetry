import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:poetry/common/common_elevatedbutton.dart';

import 'package:poetry/screen/onboarding_screen/onboarding_controller.dart';
import 'package:poetry/utils/color_res.dart';
import 'package:poetry/utils/size_res.dart';
import 'package:poetry/utils/string_res.dart';

Widget onBoardingPageView() {
  return GetBuilder<OnBoardingController>(
    id: "page",
    builder: (controller) => Stack(children: [
      Container(
        height: Get.height * 0.95,
        width: Get.width,
        child: Container(
          margin: EdgeInsets.only(top: Get.height * 0.1),
          child: PageView.builder(
            controller: controller.pageController,
            onPageChanged: controller.pageViewNext,
            itemCount: controller.titles.length,
            itemBuilder: (context, index) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizeRes.verticalSize(0.04),
                Center(
                  child: Image.asset(
                    controller.images[index],
                    scale: 1.5,
                  ),
                ),
                Center(
                  child: Text(controller.titles[index],
                      style: TextStyle(
                          color: ColorRes.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: Get.width * 0.1,
                    right: Get.width * 0.1,
                    top: Get.height * 0.06,
                  ),
                  child: Text(controller.descriptions[index],
                      style: TextStyle(color: ColorRes.white)),
                ),
              ],
            ),
          ),
        ),
      ),
      Positioned(
        top: Get.height * 0.01,
        right: Get.width * 0,
        child: TextButton(
          onPressed: () => controller.onTapSkip(controller),
          child: Text(
            StringRes.skip,
            style: TextStyle(color: ColorRes.white, fontSize: 16),
          ),
        ),
      ),
      Positioned(
        bottom: Get.height * 0.03,
        left: Get.width * 0.08,
        child: GetBuilder<OnBoardingController>(
          id: "page",
          builder: (controller) => Row(
            children: [
              AnimatedContainer(
                duration: Duration(
                  seconds: 1,
                ),
                height: Get.height * 0.01,
                width: controller.currentPage == 0
                    ? Get.width * 0.15
                    : Get.width * 0.05,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  shape: BoxShape.rectangle,
                  color: controller.currentPage == 0
                      ? ColorRes.purple
                      : ColorRes.white,
                ),
              ),
              SizeRes.horizontalSize(0.02),
              AnimatedContainer(
                duration: Duration(seconds: 1),
                height: Get.height * 0.01,
                width: controller.currentPage == 1
                    ? Get.width * 0.15
                    : Get.width * 0.05,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  shape: BoxShape.rectangle,
                  color: controller.currentPage == 1
                      ? ColorRes.purple
                      : ColorRes.white,
                ),
              ),
              SizeRes.horizontalSize(0.02),
              AnimatedContainer(
                duration: Duration(seconds: 1),
                height: Get.height * 0.01,
                width: controller.currentPage == 2
                    ? Get.width * 0.15
                    : Get.width * 0.05,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  shape: BoxShape.rectangle,
                  color: controller.currentPage == 2
                      ? ColorRes.purple
                      : ColorRes.white,
                ),
              ),
            ],
          ),
        ),
      ),
      Positioned(
        bottom: Get.height * 0.01,
        right: Get.width * 0.01,
        child: commonElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: ColorRes.white,
            shape: CircleBorder(
              side: BorderSide(color: ColorRes.white),
            ),
          ),
          onPressed: () => controller.onTapNext(),
          containerColor: ColorRes.white,
          child: Icon(Icons.arrow_forward_ios, color: ColorRes.purple),
        ),
      ),
    ]),
  );
}
