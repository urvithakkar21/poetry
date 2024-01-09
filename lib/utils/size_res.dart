

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SizeRes{


  static Widget horizontalSize(double value){
    return SizedBox(width: Get.width*value,);
  }
  static Widget verticalSize(double value){
    return SizedBox(height: Get.height*value,);
  }


}