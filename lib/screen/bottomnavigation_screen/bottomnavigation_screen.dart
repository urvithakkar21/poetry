import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poetry/common/common_background.dart';
import 'package:poetry/screen/bottomnavigation_screen/bottomnavigation_controller.dart';
import 'package:poetry/screen/bottomnavigation_screen/bottomnavigation_widget.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(BottomNavController());
    return commonBackground(
        child: homeBottomNavigation());
  }
}
