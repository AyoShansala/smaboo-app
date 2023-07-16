import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smaboo_uis/manual_booking_screens/stylist_bottom_sheet.dart';

import 'package:smaboo_uis/util/custom_divider.dart';
import 'package:smaboo_uis/widgets/style_sheet_card.dart';
import 'package:smaboo_uis/widgets/white_container.dart';

class ManualBookingScreen extends StatefulWidget {
  const ManualBookingScreen({super.key});

  @override
  State<ManualBookingScreen> createState() => _ManualBookingScreenState();
}

class _ManualBookingScreenState extends State<ManualBookingScreen> {
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

                        ///Select a Stylist
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
                                  InkWell(
                                      onTap: () => _show(context),
                                      child: Image.asset('icons/arrowDown.png'))
                                ],
                              ),
                            ),
                          ),
                        ),

                        ///Select Services
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

                        ///custom divider
                        const CustomDivider(
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

                        /// contact Number
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

                        ///Name of customer
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

                        ///Number of Customers
                        Padding(
                          padding: EdgeInsets.only(
                            bottom: 14.h,
                          ),
                          child: WhiteContainer(
                            child: Row(
                              children: [
                                Stack(
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 21.w),
                                          child: Text(
                                            "Number of Customers",
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
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 270.w,
                                      ),
                                      child: Container(
                                        width: 1.w,
                                        height: 81.h,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: const Color(0xffdadada),
                                            width: 0.4.w,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 33.w,
                                  ),
                                  child: Text(
                                    "01",
                                    style: const TextStyle(
                                      color: const Color(0xff2e2e2e),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Poppins",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 20.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        ///Notes and Additional Details
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

                        ///add booking button
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

  void _show(BuildContext ctx) {
    showModalBottomSheet(
      isScrollControlled: true,
      shape: RoundedRectangleBorder(),
      // constraints: BoxConstraints.expand(
      //   height: 720.h,
      //   width: 390.w,
      // ),
      context: ctx,
      useSafeArea: true,
      builder: (ctx) => Stack(
        children: [
          Container(
            height: 720.h,
            width: 390.w,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
              boxShadow: [
                BoxShadow(
                  color: Color(0x0f000000),
                  offset: Offset(0, 50),
                  blurRadius: 100,
                  spreadRadius: 4,
                )
              ],
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 14.w,
                    right: 14.w,
                    top: 22.h,
                    bottom: 22.h,
                  ),
                  child: Row(
                    children: [
                      /// yellow circle
                      Container(
                        width: 50.w,
                        height: 50.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color(0xfffed629),
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                              'icons/iconlyLightArrowLeftsvg.svg',
                              width: 24.w,
                              height: 24.w,
                              fit: BoxFit.scaleDown),
                        ),
                      ),

                      /// Select Stylist
                      Padding(
                        padding: EdgeInsets.only(
                          left: 72.0.w,
                        ),
                        child: Text(
                          "Select Stylist",
                          style: const TextStyle(
                            color: const Color(0xff000000),
                            fontWeight: FontWeight.w600,
                            fontFamily: "Gilroy",
                            fontStyle: FontStyle.normal,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                CustomDivider(
                  thickness: 0.4,
                ),
                //Search field
                Padding(
                  padding: EdgeInsets.only(
                    left: 14.w,
                    right: 14.w,
                    top: 13.h,
                    bottom: 12.h,
                  ),
                  child: Container(
                    width: 362.w,
                    height: 80.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.r),
                      ),
                      border: Border.all(
                        color: const Color(0xff979797),
                        width: 0.25.h,
                      ),
                      color: const Color(0xffffffff),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 30.w,
                        right: 26.w,
                        top: 19.h,
                        bottom: 24.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Search Stylist",
                            style: TextStyle(
                              color: const Color(0xff000000),
                              fontSize: 16.sp,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          Image.asset("icons/search.png")
                        ],
                      ),
                    ),
                  ),
                ),

                StyleSheetCard(
                  prifilePic: 'group7.png',
                  titleText: 'Any Stylist',
                  subText: 'Pick any availble stylist',
                  titleColor: Color(0xff000000),
                ),
                StyleSheetCard(
                  prifilePic: 'ovalCopy2.png',
                  titleText: 'Amanda Silva',
                  subText: 'Head Hairstylist',
                  titleColor: Color(0xff000000),
                ),
                StyleSheetCard(
                  prifilePic: 'ovalCopy.png',
                  titleText: 'Amy Hawkinson',
                  subText: 'Head Hairstylist',
                  titleColor: Color(0xff000000),
                ),
                StyleSheetCard(
                  prifilePic: 'ovalCopy4.png',
                  titleText: 'Britney Jude',
                  subText: 'Manager',
                  titleColor: Color(0xff000000),
                ),

                SizedBox(
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
                              child: Image.asset('icons/ovalCopy5.png'),
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
                                    "Chris Jones",
                                    style: TextStyle(
                                      color: Color(0xffbdbdbd),
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Poppins",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 18.0.sp,
                                    ),
                                  ),

                                  /// Pick any availble st
                                  Text(
                                    "Assistant Stylist",
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
                            // booked badge
                            Padding(
                              padding: EdgeInsets.only(
                                left: 74.0.w,
                              ),
                              child: Container(
                                width: 90.w,
                                height: 28.h,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(14.r)),
                                  color: const Color(0xfff4f4f4),
                                ),
                                child: Center(
                                  child: Text(
                                    "Booked",
                                    style: TextStyle(
                                      color: const Color(0xff878787),
                                      fontWeight: FontWeight.w300,
                                      fontFamily: "Poppins",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 14.0.sp,
                                    ),
                                  ),
                                ),
                              ),
                            ),
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
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
