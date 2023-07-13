import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smaboo_uis/util/custom_divider.dart';
import 'package:smaboo_uis/widgets/white_container.dart';

class ManualBookingScreen extends StatelessWidget {
  const ManualBookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  width: 390.w,
                  height: 190.h,
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 67.h,
                          bottom: 24.h,
                          left: 23.w,
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              "icons/group.png",
                            ),
                          ],
                        ),
                      ),
                      CustomDivider(
                        thickness: 0.4,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 21.h,
                          bottom: 27.h,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Add a Bookings",
                              style: TextStyle(
                                color: const Color(0xff000000),
                                fontWeight: FontWeight.w600,
                                fontFamily: "Gilroy",
                                fontStyle: FontStyle.normal,
                                fontSize: 21.sp,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 19.h,
                            bottom: 21.h,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Tick and arrange the stats to be shown\non your landing page",
                                style: TextStyle(
                                  color: const Color(0xff2e2e2e),
                                  fontWeight: FontWeight.w300,
                                  fontFamily: "Poppins",
                                  fontStyle: FontStyle.normal,
                                  fontSize: 14.sp,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),

                        WhiteContainer(
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 17.w,
                              bottom: 31.h,
                              top: 25.h,
                              right: 141.w,
                            ),
                            child: Row(
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset('icons/calandSvg.svg'),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 15.w,
                                      ),
                                      child: Text(
                                        "Select Date and Time",
                                        style: TextStyle(
                                          color: const Color(0xff2e2e2e),
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "Poppins",
                                          fontStyle: FontStyle.normal,
                                          fontSize: 15.sp,
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 25.h,
                            bottom: 14.h,
                          ),
                          child: const CustomDivider(
                            thickness: 0.4,
                          ),
                        ),

                        /// Service Details
                        Padding(
                          padding: EdgeInsets.only(
                            left: 35.w,
                            right: 229.w,
                            bottom: 26.h,
                          ),
                          child: Row(
                            children: [
                              /// Service Details
                              Text(
                                "Service Details",
                                style: TextStyle(
                                  color: const Color(0xff000000),
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Poppins",
                                  fontStyle: FontStyle.normal,
                                  fontSize: 17.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            bottom: 13.h,
                          ),
                          child: WhiteContainer(
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 21.w,
                                bottom: 31.h,
                                top: 25.h,
                                right: 26.w,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Select a Stylist",
                                    style: TextStyle(
                                      color: const Color(0xff2e2e2e),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Poppins",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 15.sp,
                                    ),
                                  ),
                                  Image.asset('icons/arrowDown.png')
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            bottom: 26.h,
                          ),
                          child: WhiteContainer(
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 21.w,
                                bottom: 31.h,
                                top: 25.h,
                                right: 26.w,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Select Services",
                                    style: TextStyle(
                                      color: const Color(0xff2e2e2e),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Poppins",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 15.sp,
                                    ),
                                  ),
                                  SvgPicture.asset('icons/plusSvg.svg')
                                ],
                              ),
                            ),
                          ),
                        ),
                        CustomDivider(
                          thickness: 0.4,
                        ),

                        /// Customere Details
                        Padding(
                          padding: EdgeInsets.only(
                            top: 14.h,
                            left: 35.w,
                            right: 207.w,
                            bottom: 24.h,
                          ),
                          child: Row(
                            children: [
                              /// Customer Details
                              Text(
                                "Customer Details",
                                style: TextStyle(
                                  color: const Color(0xff000000),
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Poppins",
                                  fontStyle: FontStyle.normal,
                                  fontSize: 17.sp,
                                ),
                              ),
                            ],
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(
                            bottom: 14.h,
                          ),
                          child: WhiteContainer(
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 21.w,
                                bottom: 32.h,
                                top: 28.h,
                                right: 144.w,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Contact Number",
                                    style: TextStyle(
                                      color: const Color(0xff2e2e2e),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Poppins",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 15.sp,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            bottom: 14.h,
                          ),
                          child: WhiteContainer(
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 21.w,
                                bottom: 28.h,
                                top: 28.h,
                                right: 37.w,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Name of Customers",
                                    style: TextStyle(
                                      color: const Color(0xff2e2e2e),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Poppins",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 15.sp,
                                    ),
                                  ),
                                  SvgPicture.asset('icons/plusSvg.svg')
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            bottom: 14.h,
                          ),
                          child: WhiteContainer(
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 21.w,
                                bottom: 32.h,
                                top: 28.h,
                                right: 37.w,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Number of Customers",
                                    style: TextStyle(
                                      color: const Color(0xff2e2e2e),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Poppins",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 15.sp,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 362.w,
                          height: 153.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20.r),
                            ),
                            border: Border.all(
                              color: const Color(0xff979797),
                              width: 0.25.w,
                            ),
                            color: const Color(0xffffffff),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 21.w,
                                  bottom: 32.h,
                                  top: 28.h,
                                  right: 88.w,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Notes and Additional Details",
                                      style: TextStyle(
                                        color: const Color(0xff2e2e2e),
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "Poppins",
                                        fontStyle: FontStyle.normal,
                                        fontSize: 15.sp,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(
                            top: 41.h,
                            bottom: 28.h,
                          ),
                          child: Container(
                            width: 210.w,
                            height: 70.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  15.r,
                                ),
                              ),
                              color: const Color(0xff000000),
                            ),
                            child: Center(
                              child: Text(
                                "Add Booking",
                                style: TextStyle(
                                  color: const Color(0xffffffff),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Gilroy",
                                  fontStyle: FontStyle.normal,
                                  fontSize: 15.sp,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
