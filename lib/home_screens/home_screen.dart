import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smaboo_uis/Components/bottom_nav_bar.dart';
import 'package:smaboo_uis/widgets/booking_widget.dart';
import 'package:smaboo_uis/widgets/state_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // width: double.infinity,
        // height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 20.w,
                right: 20.w,
                top: 64.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.menu,
                    size: 30,
                  ),
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          style: TextStyle(
                            color: Color(0xff000000),
                            fontWeight: FontWeight.w600,
                            fontFamily: "Poppins",
                            fontStyle: FontStyle.normal,
                            fontSize: 24.0,
                          ),
                          text: "smaboo ",
                        ),
                        TextSpan(
                          style: TextStyle(
                            color: Color(0xff000000),
                            fontWeight: FontWeight.w500,
                            fontFamily: "Poppins",
                            fontStyle: FontStyle.normal,
                            fontSize: 17.0,
                          ),
                          text: "business",
                        ),
                      ],
                    ),
                  ),
                  Stack(
                    children: [
                      Image.asset("icons/bell24.png"),
                      Positioned(
                        top: 0.h,
                        left: 0.w,
                        child: Container(
                          width: 11.w,
                          height: 11.h,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xff31d3a2),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 7,
                bottom: 17,
              ),
              child: Container(
                width: 390.w,
                height: 1.h,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xffc7c7c7),
                    width: 0.5,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 20.w,
                            right: 20.w,
                          ),
                          child: Container(
                            width: 353.w,
                            height: 72.h,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(20),
                              ),
                              border: Border.all(
                                color: const Color(0xff979797),
                                width: 0.25,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Search here",
                                    style: TextStyle(
                                      fontSize: 18,
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
                        Padding(
                          padding: EdgeInsets.only(
                            top: 26.h,
                            left: 20.w,
                            right: 20.w,
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 14.w,
                              right: 14.w,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Stats",
                                  style: TextStyle(
                                    color: Color(0xff000000),
                                    fontSize: 22,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),
                                Image.asset("icons/c_right.png")
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 16.h,
                            bottom: 24.h,
                            left: 20.w,
                            right: 20.w,
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
                                StateWidgets(
                                  statusTxt: "Total Bookings",
                                  titleTxt: "Today",
                                  numberTxt: "18",
                                  arrow: "green_up.png",
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 390.w,
                          height: 1.h,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xffc7c7c7),
                              width: 0.5,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 22.h,
                            left: 34.w,
                            right: 34.w,
                            bottom: 24.h,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const Text(
                                    "Todays Bookings",
                                    style: TextStyle(
                                      color: Color(0xff000000),
                                      fontSize: 22,
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FontStyle.normal,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Container(
                                    width: 44.w,
                                    height: 34.h,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(17),
                                      ),
                                      color: Color(0xffffffff),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        "06",
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          color: Color(0xff000000),
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          fontStyle: FontStyle.normal,
                                          letterSpacing: 0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Image.asset("icons/c_right.png")
                            ],
                          ),
                        ),
                        BookingWidget(),
                        BookingWidget(),
                        // Column(
                        //   children: [
                        //     BookingWidget(),
                        //     BookingWidget(),
                        //   ],
                        // ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
      floatingActionButton: FloatingActionButton(
        child: Image.asset("icons/group15.png"),
        onPressed: () {},
      ),
    );
  }
}
