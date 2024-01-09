import 'package:flutter/material.dart';
import 'package:poetry/utils/color_res.dart';

Widget commonTextField({
  required String? hintText,
  TextEditingController? controller,
  bool obscureText = false,
  Widget? suffixIcon,
}) {
  return TextField(
    controller: controller,
    obscureText: obscureText,
    cursorColor: ColorRes.white,
    style: TextStyle(color: ColorRes.white),
    decoration: InputDecoration(
      suffixIcon: suffixIcon,
      suffixIconColor: ColorRes.white,
      hintText: hintText,
      hintStyle: TextStyle(color: ColorRes.white),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorRes.white),
        borderRadius: BorderRadius.circular(20),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorRes.white),
        borderRadius: BorderRadius.circular(20),
      ),
    ),
  );
}
