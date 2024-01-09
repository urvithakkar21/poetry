import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poetry/screen/bottomnavigation_screen/bottomnavigation_controller.dart';
import 'package:poetry/utils/asset_res.dart';
import 'package:poetry/utils/color_res.dart';

Widget homeBottomNavigation() {
  return GetBuilder<BottomNavController>(
    id: 'bottomBar',
    builder: (controller) => Scaffold(
      backgroundColor: ColorRes.transparent,
      body: Container(),
      floatingActionButton: Container(
        margin: EdgeInsets.all(5),
        height: Get.height * 0.2,
        width: Get.width * 0.2,
        decoration: BoxDecoration(
            shape: BoxShape.circle, border: Border.all(color: ColorRes.purple,width: 3)),
        child: FloatingActionButton(
          backgroundColor: ColorRes.white,
          onPressed: () {},
          child: Image.asset(ImageRes.logo,
              height: Get.height * 0.09,
              width: Get.width * 0.09,
              color: ColorRes.activeColor.shade400),
          //params
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
        itemCount: IconRes.iconList.length,
        tabBuilder: (int index, bool isActive) {
          return Icon(
            isActive ? IconRes.colorIconList[index] : IconRes.iconList[index],
            size: 35,
            color: ColorRes.activeColor,
          );
        },
        height: Get.height * 0.1,
        backgroundColor: ColorRes.white,
        activeIndex: controller.bottomNavIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        leftCornerRadius: 40,
        rightCornerRadius: 40,

        onTap: (index) => controller.onTapBottom(index),
        //other params
      ),
    ),
  );
}
