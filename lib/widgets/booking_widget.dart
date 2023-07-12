import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smaboo_uis/util/custom_divider.dart';
import 'package:smaboo_uis/util/font.dart';

class BookingWidget extends StatelessWidget {
  const BookingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Container(
        width: 352.w,
        // height: 152.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(20.r),
          ),
          color: const Color(0xffffffff),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            top: 7.h,
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 7.w,
                  right: 10.w,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 141.w,
                      height: 34.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(17),
                        ),
                        color: const Color(0xfffed629),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 9,
                          top: 5,
                          right: 9,
                          bottom: 6,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    style: TextStyle(
                                      color: Color(0xff000000),
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Poppins",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 15.sp,
                                    ),
                                    text: "9:30",
                                  ),
                                  TextSpan(
                                    style: TextStyle(
                                      color: Color(0xff000000),
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Poppins",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 10.sp,
                                    ),
                                    text: "PM",
                                  ),
                                ],
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    style: TextStyle(
                                      color: Color(0xff000000),
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Poppins",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 15.sp,
                                    ),
                                    text: "10:30",
                                  ),
                                  TextSpan(
                                    style: TextStyle(
                                      color: Color(0xff000000),
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Poppins",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 10.sp,
                                    ),
                                    text: "PM",
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Text(
                      "6790766C",
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w300,
                        fontFamily: 'Poppins',
                        fontStyle: FontStyle.normal,
                        fontSize: 13.sp,
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.only(
                  top: 8.h,
                  bottom: 15.h,
                ),
                child: CustomDivider(thickness: 0.4.h),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 7.w,
                  right: 10.w,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "60min  x02 Services",
                      style: TextStyle(
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w600,
                        fontFamily: "Poppins",
                        fontStyle: FontStyle.normal,
                        fontSize: 16.sp,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "Assigned to",
                          style: TextStyle(
                            color: const Color(0xff878787),
                            fontWeight: FontWeight.w400,
                            fontFamily: "Poppins",
                            fontStyle: FontStyle.normal,
                            fontSize: 10.sp,
                          ),
                        ),
                        Image.asset("icons/ovalCopy.png")
                      ],
                    ),
                  ],
                ),
              ),

              ///CustomDivider
              Padding(
                padding: EdgeInsets.only(
                  top: 15.h,
                ),
                child: CustomDivider(thickness: 0.4.h),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 7.w,
                  right: 10.w,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          Image.asset("icons/group3.png"),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Amy Bridget",
                                style: TextStyle(
                                  color: const Color(0xff000000),
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 14.sp,
                                ),
                              ),
                              Text(
                                "Customer",
                                style: TextStyle(
                                  color: const Color(0xff878787),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Poppins",
                                  fontStyle: FontStyle.normal,
                                  fontSize: 10.sp,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 1,
                      height: 55,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color(0xffdadada), width: 0.5),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Details",
                            style: kPoppins13400(context),
                          ),
                          SizedBox(
                            width: 2.w,
                          ),
                          Image.asset("icons/c_right.png"),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
