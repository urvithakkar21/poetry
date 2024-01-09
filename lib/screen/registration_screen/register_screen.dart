import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poetry/common/common_backdropfilter.dart';
import 'package:poetry/common/common_background.dart';
import 'package:poetry/screen/login_screen/login_widget.dart';
import 'package:poetry/screen/registration_screen/register_controller.dart';
import 'package:poetry/screen/registration_screen/register_widget.dart';
import 'package:poetry/utils/color_res.dart';
import 'package:poetry/utils/size_res.dart';


class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(RegisterController());
    return commonBackground(
      child: Scaffold(
        backgroundColor: ColorRes.transparent,
        body: backdropContainer(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  imageContainer(),
                  signUpText(),
                  SizeRes.verticalSize(0.02),
                  regFullName(),
                  SizeRes.verticalSize(0.02),
                  regEmailTextField(),
                  SizeRes.verticalSize(0.02),
                  regPassTextField(),
                  regCheckBox(),
                  SizeRes.verticalSize(0.05),
                  regElevatedButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
