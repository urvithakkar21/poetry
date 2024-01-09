import 'package:flutter/material.dart';
import 'package:poetry/utils/color_res.dart';

class ImageRes {
  static const logo = 'assets/images/Group.png';
  static const vector1 = 'assets/images/vector1.png';

  ///---------------login----------
  static const roseGif = 'assets/images/rose.gif';
}

class IconRes {
  static const backArrow = Icon(
    Icons.arrow_back_rounded,
    color: ColorRes.white,
  );

  static List<IconData> iconList = [
    Icons.home_outlined,
    Icons.bookmark_border,
    Icons.notifications_none,
    Icons.person_outlined,
  ];
  static List<IconData> colorIconList = [
    Icons.home,
    Icons.bookmark,
    Icons.notifications,
    Icons.person,
  ];

  static const close = Icon(
    Icons.close,
    color: ColorRes.white,
  );
}
