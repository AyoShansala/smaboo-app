import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StateWidgets extends StatelessWidget {
  String? statusTxt;
  String? titleTxt;
  String? numberTxt;
  String? arrow;

  StateWidgets({
    super.key,
    this.statusTxt,
    this.titleTxt,
    this.numberTxt,
    this.arrow,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8.w),
      child: Container(
        width: 172.w,
        // height: 119.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(
              20.r,
            ),
          ),
          color: const Color(0xffffffff),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            top: 17.h,
            left: 14.w,
            right: 20.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                statusTxt!,
                style: TextStyle(
                  color: const Color(0xff000000),
                  fontWeight: FontWeight.w500,
                  fontFamily: "Poppins",
                  fontStyle: FontStyle.normal,
                  fontSize: 17.sp,
                ),
              ),
              Text(
                titleTxt!,
                style: TextStyle(
                  color: const Color(0xff878787),
                  fontWeight: FontWeight.w300,
                  fontFamily: "Poppins",
                  fontStyle: FontStyle.normal,
                  fontSize: 14.sp,
                ),
              ),
              SizedBox(
                // height: 32.h,
                child: Padding(
                  padding: EdgeInsets.only(top: 13.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        numberTxt!,
                        style: TextStyle(
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w700,
                          fontFamily: "Gilroy",
                          fontStyle: FontStyle.normal,
                          fontSize: 32.sp,
                        ),
                      ),
                      Image.asset("icons/$arrow")
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
