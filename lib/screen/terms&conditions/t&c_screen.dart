import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poetry/common/common_backdropfilter.dart';
import 'package:poetry/common/common_background.dart';
import 'package:poetry/screen/terms&conditions/t&c_controller.dart';
import 'package:poetry/screen/terms&conditions/t&c_widget.dart';
import 'package:poetry/utils/color_res.dart';
import 'package:poetry/utils/size_res.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(TAndCController());
    return commonBackground(
        child: Scaffold(
      backgroundColor: ColorRes.transparent,
      body: backdropContainer(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizeRes.verticalSize(0.02),
          closePage(),
          termsTitle(),
          SizeRes.verticalSize(0.02),
          termsContent(),
          acceptElevatedButton(),

        ],
      )),
    ));
  }
}
