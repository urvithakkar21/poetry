import 'package:flutter/material.dart';
import 'package:poetry/utils/color_res.dart';

Widget commonElevatedButton({
  required void Function()? onPressed,
  double? height,
  double? width,
  Color? containerColor,
  Widget? child,
  ButtonStyle? style,
}) {
  return ElevatedButton(
    style: style,
    onPressed: onPressed,
    child: Container(
      height: height,
      width: width,
      color: containerColor,
      child: child,
    ),
  );
}
