import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smaboo_uis/util/colors.dart';

TextStyle kPoppins13400(
  BuildContext context, {
  Color color = kBlack,
  bool isMobile = true,
}) {
  return TextStyle(
    color: color,
    fontWeight: FontWeight.w400,
    fontFamily: "Poppins",
    fontSize: isMobile ? 13.sp : 4.7.sp
  );
}
