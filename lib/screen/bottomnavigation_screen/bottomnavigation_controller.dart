import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:poetry/utils/asset_res.dart';

class BottomNavController extends GetxController {
  int bottomNavIndex = 0;


  void onTapBottom(int index) {
    bottomNavIndex = index;
    update(["bottomBar"]);
  }
}
