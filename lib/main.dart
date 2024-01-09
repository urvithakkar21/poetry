import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poetry/screen/splesh_screen/splesh_screen.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'PoppinsItalic'),
      home: SpleshScreen(),
    ),
  );
}
