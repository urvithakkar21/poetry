import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:poetry/screen/bottomnavigation_screen/bottomnavigation_screen.dart';
import 'package:poetry/screen/registration_screen/register_screen.dart';

class LoginController extends GetxController {
  bool showPassword = false;
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  void showPass() {
    showPassword = !showPassword;
    update(['pass']);
  }

  void onTapSignUp() {
    Get.to(RegisterScreen());
  }
  void onTapLogin() {
    Get.offAll(BottomNavigation());
  }

}
