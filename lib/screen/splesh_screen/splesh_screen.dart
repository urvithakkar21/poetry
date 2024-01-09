import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poetry/common/common_mediaquery.dart';
import 'package:poetry/screen/splesh_screen/splash_contoller.dart';
import 'package:poetry/utils/asset_res.dart';
import 'package:poetry/utils/color_res.dart';
import 'package:poetry/utils/string_res.dart';

class SpleshScreen extends StatefulWidget {
  const SpleshScreen({super.key});

  @override
  State<SpleshScreen> createState() => _SpleshScreenState();
}

class _SpleshScreenState extends State<SpleshScreen> {
  @override
  Widget build(BuildContext context) {
    MediaQueryClass.findBuildContext(context);
    // print(MediaQueryClass.height);
    // print(MediaQueryClass.width);
    SplashController splashController = Get.put(SplashController());
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorRes.purple,
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: Get.height * 0.15,
              ),
              Text(
                StringRes.welcome,
                style: TextStyle(
                  color: ColorRes.white,
                  fontSize: 30,
                ),
              ),
              SizedBox(
                height: Get.height * 0.1,
              ),
              CircleAvatar(
                radius: 140,
                backgroundColor: ColorRes.white,
                child: Image.asset(
                  ImageRes.logo,
                  scale: 3,
                  color: ColorRes.purple,
                ),
              ),
              SizedBox(
                height: Get.height * 0.1,
              ),
              Text(
                StringRes.Heart,
                style: TextStyle(
                  color: ColorRes.white,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
