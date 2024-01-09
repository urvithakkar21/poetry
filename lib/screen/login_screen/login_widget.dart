import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poetry/common/common_elevatedbutton.dart';
import 'package:poetry/common/textfield.dart';
import 'package:poetry/screen/login_screen/login_controller.dart';
import 'package:poetry/screen/registration_screen/register_controller.dart';
import 'package:poetry/utils/asset_res.dart';
import 'package:poetry/utils/color_res.dart';
import 'package:poetry/utils/string_res.dart';

Widget EmailTextfield() {
  return GetBuilder<LoginController>(
    builder: (controller) => commonTextField(
      hintText: StringRes.email,
      controller: controller.email,
    ),
  );
}

Widget passTextField() {
  return GetBuilder<LoginController>(
    id: 'pass',
    builder: (controller) => commonTextField(
      hintText: StringRes.pass,
      controller: controller.pass,
      obscureText: controller.showPassword,
      suffixIcon: InkWell(
        onTap: controller.showPass,
        child: Icon(
            controller.showPassword ? Icons.visibility_off : Icons.visibility),
      ),
    ),
  );
}

Widget loginElevatedButton() {
  return GetBuilder<LoginController>(
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
            StringRes.login,
            style: TextStyle(
                color: ColorRes.purple,
                fontSize: 17,
                fontWeight: FontWeight.bold),
          ),
        ),
        onPressed:() => controller.onTapLogin(),
      ),
    ),
  );
}

Widget imageContainer() {
  return GetBuilder<LoginController>(
    builder: (controller) => Center(
      child: Container(
        height: Get.height * 0.2,
        width: Get.width * 0.3,
        child: Image.asset(ImageRes.roseGif),
      ),
    ),
  );
}

Widget loginText() {
  return GetBuilder<LoginController>(
    builder: (controller) => Center(
      child: Text(
        StringRes.login,
        style: TextStyle(
            color: ColorRes.white, fontWeight: FontWeight.bold, fontSize: 20),
      ),
    ),
  );
}

Widget forgotTextButton() {
  return GetBuilder<LoginController>(
    builder: (controller) => Padding(
      padding: EdgeInsets.only(left: Get.width * 0.40),
      child: TextButton(
        onPressed: () {},
        child: Text(
          StringRes.forget,
          style: TextStyle(color: ColorRes.white),
        ),
      ),
    ),
  );
}

Widget signUpTextButton(){
  return GetBuilder<LoginController>(builder: (controller) =>  Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(StringRes.donthave,
          style: TextStyle(color: ColorRes.white)),
      SizedBox(
        width: Get.width * 0.0,
      ),
      TextButton(
        onPressed:() => controller.onTapSignUp(),
        child: Text(
          StringRes.singUp,
          style: TextStyle(
              decoration: TextDecoration.underline,
              color: ColorRes.purple,
              fontWeight: FontWeight.bold),
        ),
      ),
    ],
  ),);
}
