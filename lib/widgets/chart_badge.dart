import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChartBadge extends StatelessWidget {
  String? time;
  Color? color;
  String? number;
  ChartBadge({
    super.key,
    this.color,
    this.time,
    this.number,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 65.w,
      height: 61.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(12.r),
        ),
        boxShadow: [
          BoxShadow(
            color: const Color(0x16000000),
            offset: Offset(0, 2),
            blurRadius: 24.r,
            // spreadRadius: 0.r,
          ),
        ],
        color: const Color(0xffffffff),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          left: 9.w,
          right: 9.w,
          top: 7.h,
          bottom: 4.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 16.w,
              height: 6.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(3),
                ),
                color: color,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 6.h),
              child: AutoSizeText(
                time!,
                style: TextStyle(
                  color: const Color(0xff000000),
                  fontWeight: FontWeight.w400,
                  fontFamily: "Poppins",
                  fontStyle: FontStyle.normal,
                  fontSize: 9.sp,
                ),
                maxLines: 1,
                minFontSize: 7.sp,
                stepGranularity: 7.sp,
              ),
            ),
            Row(
              children: [
                Text(
                  number!,
                  style: TextStyle(
                    color: const Color(0xff000000),
                    fontWeight: FontWeight.w600,
                    fontFamily: "Poppins",
                    fontStyle: FontStyle.normal,
                    fontSize: 11.sp,
                  ),
                ),
                SvgPicture.asset(
                  "icons/arrowUp.svg",
                  width: 14.w,
                  height: 14.w,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
