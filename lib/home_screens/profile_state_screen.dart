import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smaboo_uis/Components/pie_chart.dart';
import 'package:smaboo_uis/widgets/booking_card.dart';
import 'package:smaboo_uis/widgets/dropdown.dart';
import 'package:smaboo_uis/widgets/state_widget.dart';

class ProfileStateScreen extends StatelessWidget {
  const ProfileStateScreen({super.key});

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
                  height: 108.h,
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 57.h,
                      bottom: 17.h,
                      left: 19.w,
                      right: 19.w,
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          "icons/group.png",
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 86.w,
                          ),
                          child: Text(
                            "My Stats",
                            style: TextStyle(
                              color: const Color(0xff000000),
                              fontWeight: FontWeight.w600,
                              fontFamily: "Gilroy",
                              fontStyle: FontStyle.normal,
                              fontSize: 18.sp,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: 17.h,
                              left: 19.w,
                              right: 19.w,
                              bottom: 19.h,
                            ),
                            child: Row(
                              children: [
                                StateWidgets(
                                  statusTxt: "Total Bookings",
                                  titleTxt: "Today",
                                  numberTxt: "18",
                                  arrow: "green_up.png",
                                ),
                                StateWidgets(
                                  statusTxt: "Cancelled",
                                  titleTxt: "Month",
                                  numberTxt: "12%",
                                  arrow: "red_down.png",
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 350.w,
                          // height: 444.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20.r),
                            ),
                            color: const Color(0xffffffff),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: 12.w,
                                right: 12.w,
                                top: 22.h,
                                bottom: 13.h),
                            child: Column(
                              children: [
                                Text(
                                  "Select the stats you want to see below",
                                  style: TextStyle(
                                    color: const Color(0xff2e2e2e),
                                    fontWeight: FontWeight.w300,
                                    fontFamily: "Poppins",
                                    fontStyle: FontStyle.normal,
                                    fontSize: 14.sp,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 16.h,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomDropdowns(
                                        dropdownImage: "chart.png",
                                        dropdownName: 'Type',
                                        padding: 12.w,
                                      ),
                                      CustomDropdowns(
                                        dropdownImage: "clock.png",
                                        dropdownName: 'Month',
                                        padding: 8.w,
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 30.h,
                                  ),
                                  child: CustomPieChart(),
                                ),
                                Text(
                                  "all numbers are accurate based on the activity",
                                  style: TextStyle(
                                    color: const Color(0xff2e2e2e),
                                    fontWeight: FontWeight.w300,
                                    fontFamily: "Poppins",
                                    fontStyle: FontStyle.normal,
                                    fontSize: 10.sp,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 34.w,
                            top: 27.h,
                            bottom: 34.h,
                          ),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "All Statistics",
                                    style: TextStyle(
                                      color: const Color(0xff000000),
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Gilroy",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 22.sp,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 9.h),
                                    child: Text(
                                      "Tick and arrange the stats to be shown\non your landing page",
                                      style: TextStyle(
                                        color: const Color(0xff2e2e2e),
                                        fontWeight: FontWeight.w300,
                                        fontFamily: "Poppins",
                                        fontStyle: FontStyle.normal,
                                        fontSize: 14.sp,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 19.w,
                            right: 19.w,
                            // bottom: 19.h,
                          ),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                StateWidgets(
                                  statusTxt: "Total Bookings",
                                  titleTxt: "Today",
                                  numberTxt: "18",
                                  arrow: "green_up.png",
                                ),
                                StateWidgets(
                                  statusTxt: "Cancelled",
                                  titleTxt: "Month",
                                  numberTxt: "12%",
                                  arrow: "red_down.png",
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 40.h),
                          child: Column(
                            children: [
                              BookingCard(
                                cardName: "Total Bookings",
                                cardDay: "Monday",
                                cardNumber: "18",
                              ),
                              BookingCard(
                                cardName: "Total Bookings",
                                cardDay: "Monday",
                                cardNumber: "16",
                              ),
                              BookingCard(
                                cardName: "Cancelled Bookings",
                                cardDay: "Monday",
                                cardNumber: "18",
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
