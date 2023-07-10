import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookingWidget extends StatelessWidget {
  const BookingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Container(
        width: 352.w,
        height: 152.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(20.r),
          ),
          color: const Color(0xffffffff),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 7,
            top: 7,
            right: 10,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 141,
                    height: 34,
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
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  style: TextStyle(
                                    color: Color(0xff000000),
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Poppins",
                                    fontStyle: FontStyle.normal,
                                    fontSize: 15.0,
                                  ),
                                  text: "9:30",
                                ),
                                TextSpan(
                                  style: TextStyle(
                                      color: Color(0xff000000),
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Poppins",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 10.0),
                                  text: "PM",
                                ),
                              ],
                            ),
                          ),
                          RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  style: TextStyle(
                                    color: Color(0xff000000),
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Poppins",
                                    fontStyle: FontStyle.normal,
                                    fontSize: 15.0,
                                  ),
                                  text: "10:30",
                                ),
                                TextSpan(
                                  style: TextStyle(
                                    color: Color(0xff000000),
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Poppins",
                                    fontStyle: FontStyle.normal,
                                    fontSize: 10.0,
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
                  const Text(
                    "6790766C",
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.normal,
                      fontSize: 13.0,
                    ),
                  ),
                ],
              ),
              // const Divider(
              //   thickness: 0.8,
              //   color: Color(0xffdadada),
              // ),
              Padding(
                padding: EdgeInsets.only(top: 8.h),
                child: Container(
                  width: 352,
                  height: 1,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xffdadada),
                      width: 0.5,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "60min  x02 Services",
                    style: const TextStyle(
                      color: const Color(0xff000000),
                      fontWeight: FontWeight.w600,
                      fontFamily: "Poppins",
                      fontStyle: FontStyle.normal,
                      fontSize: 16.0,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "Assigned to",
                        style: const TextStyle(
                          color: const Color(0xff878787),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Poppins",
                          fontStyle: FontStyle.normal,
                          fontSize: 10.0,
                        ),
                      ),
                      Image.asset("icons/ovalCopy.png")
                    ],
                  ),
                ],
              ),
              // const Divider(
              //   thickness: 0.8,
              //   color: Color(0xffdadada),
              // ),
              Container(
                width: 352,
                height: 1,
                decoration: BoxDecoration(
                  border:
                      Border.all(color: const Color(0xffdadada), width: 0.5),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset("icons/group3.png"),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Amy Bridget",
                            style: const TextStyle(
                              color: const Color(0xff000000),
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal,
                              fontSize: 14.0,
                            ),
                          ),
                          Text(
                            "Customer",
                            style: const TextStyle(
                              color: const Color(0xff878787),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Poppins",
                              fontStyle: FontStyle.normal,
                              fontSize: 10.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text(
                        "Details",
                        style: const TextStyle(
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Poppins",
                          fontStyle: FontStyle.normal,
                          fontSize: 13.0,
                        ),
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      Image.asset("icons/c_right.png"),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
