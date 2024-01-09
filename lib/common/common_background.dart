import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poetry/common/common_circleavtar.dart';
import 'package:poetry/common/common_container.dart';
import 'package:poetry/common/common_mediaquery.dart';
import 'package:poetry/utils/color_res.dart';

Widget commonBackground({Widget? child}) {
  return SafeArea(
    child: Scaffold(
      body: Stack(
        children: [
          commonContainer(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  ColorRes.purple.shade400,
                  ColorRes.purple.shade300,
                  ColorRes.purple.shade300,
                ],
                transform: GradientRotation(8),
                begin: Alignment(0, 0),
              ),
            ),
            height: Get.height,
            width: Get.width,
          ),
          Positioned(
            left: Get.width * -0.1,
            top: Get.height * -0.05,
            child: commonCircleAvtar(
                radius: 100, backgroundColor: ColorRes.purple.shade300),
          ),
          Positioned(
            top: Get.height * 0.2,
            right: Get.width * -0.04,
            child: commonCircleAvtar(
                radius: 50, backgroundColor: ColorRes.purple.shade300),
          ),
          Positioned(
            bottom: Get.height * -0.04,
            child: commonCircleAvtar(
                radius: 90, backgroundColor: ColorRes.purple.shade200),
          ),
          Positioned(
            bottom: Get.height * 0.02,
            right: Get.height * 0.03,
            child: commonCircleAvtar(
                radius: 60, backgroundColor: ColorRes.purple.shade200),
          ),
          SizedBox(
            height: Get.height,
            width: Get.width,
            child: child ?? SizedBox(),
          )
        ],
      ),
    ),
  );
}
