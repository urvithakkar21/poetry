import 'package:flutter/material.dart';
class MediaQueryClass {
  static double height = 0;
  static double width = 0;

  static void findBuildContext(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
  }
}