import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poetry/common/common_elevatedbutton.dart';
import 'package:poetry/common/textfield.dart';
import 'package:poetry/screen/login_screen/login_controller.dart';
import 'package:poetry/screen/registration_screen/register_controller.dart';
import 'package:poetry/utils/asset_res.dart';
import 'package:poetry/utils/color_res.dart';
import 'package:poetry/utils/size_res.dart';
import 'package:poetry/utils/string_res.dart';

Widget regImageContainer() {
  return GetBuilder<LoginController>(
    builder: (controller) => Container(
      height: Get.height * 0.3,
      width: Get.width * 0.4,
      child: Image.asset(ImageRes.roseGif),
    ),
  );
}

Widget signUpText() {
  return GetBuilder<RegisterController>(
    builder: (controller) => Center(
      child: Text(
        StringRes.singUp,
        style: TextStyle(
            color: ColorRes.white, fontWeight: FontWeight.bold, fontSize: 20),
      ),
    ),
  );
}

Widget regFullName() {
  return GetBuilder<RegisterController>(
    builder: (controller) => commonTextField(
        hintText: StringRes.fullName, controller: controller.fullName),
  );
}

Widget regEmailTextField() {
  return GetBuilder<RegisterController>(
    builder: (controller) => commonTextField(
      hintText: StringRes.email,
      controller: controller.email,
    ),
  );
}

Widget regPassTextField() {
  return GetBuilder<RegisterController>(
    id: 'showPass',
    builder: (controller) => commonTextField(
      hintText: StringRes.pass,
      controller: controller.pass,
      obscureText: controller.regShowPassword,
      suffixIcon: InkWell(
        onTap: controller.regShowPass,
        child: Icon(controller.regShowPassword
            ? Icons.visibility_off
            : Icons.visibility),
      ),
    ),
  );
}

Widget regCheckBox() {
  return GetBuilder<RegisterController>(
    id: "checkBox",
    builder: (controller) => Row(
      children: [
        Checkbox(
          checkColor: ColorRes.purple,
          side: BorderSide(color: ColorRes.white),
          value: controller.checkbox,
          activeColor: ColorRes.white,

          onChanged: (value) => controller.showCheckBox(),
        ),
        Text(
          StringRes.agree,
          style: TextStyle(color: ColorRes.white),
        ),
        SizeRes.horizontalSize(0.02),
        Text(
          StringRes.terms,
          style: TextStyle(color: ColorRes.purple, fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}

Widget regElevatedButton() {
  return GetBuilder<RegisterController>(
    builder: (controller) => Center(
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
            StringRes.singUp,
            style: TextStyle(
                color: ColorRes.purple,
                fontSize: 17,
                fontWeight: FontWeight.bold),
          ),
        ),
        onPressed:() => controller.signUpNavigation(),
      ),
    ),
  );
}
