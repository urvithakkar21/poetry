import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poetry/common/common_elevatedbutton.dart';
import 'package:poetry/screen/terms&conditions/t&c_controller.dart';
import 'package:poetry/utils/asset_res.dart';
import 'package:poetry/utils/color_res.dart';
import 'package:poetry/utils/size_res.dart';
import 'package:poetry/utils/string_res.dart';

Widget closePage() {
  return GetBuilder<TAndCController>(
    builder: (controller) => Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizeRes.horizontalSize(0.01),
        IconButton(onPressed: () {}, icon: IconRes.backArrow),
        SizeRes.horizontalSize(0.65),
        IconButton(onPressed: () {}, icon: IconRes.close)
      ],
    ),
  );
}

Widget termsTitle() {
  return GetBuilder<TAndCController>(
    builder: (controller) => Padding(
      padding: EdgeInsets.only(left: Get.width * 0.05),
      child: Text(
        StringRes.terms,
        style: TextStyle(
            color: ColorRes.white, fontWeight: FontWeight.bold, fontSize: 18),
      ),
    ),
  );
}

Widget termsContent() {
  return GetBuilder<TAndCController>(
    builder: (controller) => Container(
      margin: EdgeInsets.only(left: Get.width * 0.05, right: Get.width * 0.05),
      height: Get.height * 0.53,
      width: Get.width * 0.9,
      // color: ColorRes.white,
      child: SingleChildScrollView(child: Column(children: [])),
    ),
  );
}

Widget acceptElevatedButton() {
  return GetBuilder<TAndCController>(
    builder: (controller) => Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding:
              EdgeInsets.only(top: Get.height * 0.03, left: Get.width * 0.04),
          child: commonElevatedButton(
            height: Get.height * 0.04,
            width: Get.width * 0.2,
            style: ElevatedButton.styleFrom(
              backgroundColor: ColorRes.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: Center(
              child: Text(
                StringRes.accept,
                style: TextStyle(
                    color: ColorRes.purple,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
            ),
            onPressed: () =>controller.onTapAccept(),
          ),
        ),
        Padding(
          padding:
              EdgeInsets.only(top: Get.height * 0.03, left: Get.width * 0.25),
          child: commonElevatedButton(
            height: Get.height * 0.04,
            width: Get.width * 0.2,
            style: ElevatedButton.styleFrom(
              backgroundColor: ColorRes.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: Center(
              child: Text(
                StringRes.decline,
                style: TextStyle(
                    color: ColorRes.purple,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
            ),
            onPressed: () {},
          ),
        ),
      ],
    ),
  );
}
