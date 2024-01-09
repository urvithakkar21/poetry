import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poetry/common/common_backdropfilter.dart';
import 'package:poetry/common/common_background.dart';
import 'package:poetry/screen/login_screen/login_controller.dart';
import 'package:poetry/screen/login_screen/login_widget.dart';
import 'package:poetry/utils/color_res.dart';
import 'package:poetry/utils/size_res.dart';
import 'package:poetry/utils/string_res.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LoginController());
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
                  loginText(),
                  SizeRes.verticalSize(0.02),
                  EmailTextfield(),
                  SizeRes.verticalSize(0.03),
                  passTextField(),
                  forgotTextButton(),
                  SizeRes.verticalSize(0.08),
                  loginElevatedButton(),
                  signUpTextButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
