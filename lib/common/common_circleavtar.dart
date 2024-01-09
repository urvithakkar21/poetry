import 'package:flutter/material.dart';

Widget commonCircleAvtar({
  double? radius,
  Color? backgroundColor,
  Widget? child,
}) {
  return CircleAvatar(
    child: child,
    radius: radius,
    backgroundColor: backgroundColor,
  );
}
