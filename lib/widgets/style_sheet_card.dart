import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smaboo_uis/util/custom_divider.dart';

class StyleSheetCard extends StatelessWidget {
  String? titleText;
  String? subText;
  String? prifilePic;
  Color? titleColor;
  StyleSheetCard({
    super.key,
    this.titleText,
    this.subText,
    this.prifilePic,
    this.titleColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 21.0.w,
              right: 14.0.w,
              top: 20.0.h,
            ),
            child: Row(
              children: [
                /// Oval Copy 3
                Container(
                  width: 55.w,
                  height: 55.h,
                  decoration: BoxDecoration(
                    // color: const Color(0xff000000),
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset('icons/$prifilePic'),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 30.0.w,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /// Any Stylist
                      Text(
                        titleText!,
                        style: TextStyle(
                          color: titleColor,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Poppins",
                          fontStyle: FontStyle.normal,
                          fontSize: 18.0.sp,
                        ),
                      ),

                      /// Pick any availble st
                      Text(
                        subText!,
                        style: TextStyle(
                          color: const Color(0xff878787),
                          fontWeight: FontWeight.w300,
                          fontFamily: "Poppins",
                          fontStyle: FontStyle.normal,
                          fontSize: 14.0.sp,
                        ),
                      ),
                    ],
                  ),
                ),
                // // booked badge
                // Container(
                //   width: 90.w,
                //   height: 28.h,
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.all(Radius.circular(14.r)),
                //     color: const Color(0xfff4f4f4),
                //   ),
                //   child: Center(
                //     child: Text(
                //       "Booked",
                //       style: TextStyle(
                //         color: const Color(0xff878787),
                //         fontWeight: FontWeight.w300,
                //         fontFamily: "Poppins",
                //         fontStyle: FontStyle.normal,
                //         fontSize: 14.0.sp,
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 12.0.h,
            ),
            child: CustomDivider(
              thickness: 0.4.w,
            ),
          )
        ],
      ),
    );
  }
}
