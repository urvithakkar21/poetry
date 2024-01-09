import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poetry/common/common_mediaquery.dart';
import '../utils/color_res.dart';

Widget backdropContainer({Widget? child}) {
  return Center(
    child: Container(
      width: double.infinity,
      height: double.infinity,
      margin: EdgeInsets.only(
        top: Get.height * 0.1,
        right: Get.width * 0.05,
        left: Get.width * 0.05,
        bottom: Get.height * 0.1,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: ColorRes.white.withOpacity(0.3)),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(blurRadius: 1, color: Colors.white.withOpacity(0.1)),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
          child: child,
        ),
      ),
    ),
  );
}
