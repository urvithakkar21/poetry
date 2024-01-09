import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poetry/screen/terms&conditions/t&c_screen.dart';

class RegisterController extends GetxController {
  bool regShowPassword = false;
  bool checkbox = false;
  TextEditingController email = TextEditingController();
  TextEditingController fullName = TextEditingController();
  TextEditingController pass = TextEditingController();

  void regShowPass() {
    regShowPassword = !regShowPassword;
    update(["showPass"]);
  }

  void showCheckBox() {
    checkbox = !checkbox;
    update(['checkBox']);
  }

  void signUpNavigation(){
  Get.to(TermsAndConditions());
  }
}
