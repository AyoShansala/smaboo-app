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
      // appBar: AppBar(
      //   leading: IconButton(
      //     onPressed: () {},
      //     icon: const Icon(
      //       Icons.menu,
      //       size: 30,
      //     ),
      //   ),
      //   title: RichText(
      //     text: const TextSpan(
      //       children: [
      //         TextSpan(
      //           style: TextStyle(
      //             color: Color(0xff000000),
      //             fontWeight: FontWeight.w600,
      //             fontFamily: "Poppins",
      //             fontStyle: FontStyle.normal,
      //             fontSize: 24.0,
      //           ),
      //           text: "smaboo ",
      //         ),
      //         TextSpan(
      //           style: TextStyle(
      //             color: Color(0xff000000),
      //             fontWeight: FontWeight.w500,
      //             fontFamily: "Poppins",
      //             fontStyle: FontStyle.normal,
      //             fontSize: 17.0,
      //           ),
      //           text: "business",
      //         ),
      //       ],
      //     ),
      //   ),
      //   centerTitle: true,
      //   elevation: 0.5,
      //   backgroundColor: Colors.transparent,
      //   actions: [
      //     Stack(
      //       children: [
      //         IconButton(
      //           onPressed: () {},
      //           icon: Image.asset("icons/bell24.png"),
      //         ),
      //         Positioned(
      //           top: 10,
      //           left: 14,
      //           child: Container(
      //             width: 10,
      //             height: 10,
      //             decoration: const BoxDecoration(
      //               shape: BoxShape.circle,
      //               color: Color(0xff31d3a2),
      //             ),
      //           ),
      //         ),
      //       ],
      //     )
      //   ],
      // ),
      //extendBodyBehindAppBar: true,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 19,
            right: 19,
            top: 96,
          ),
          child: Stack(
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.menu,
                          size: 30,
                        ),
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
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset("icons/bell24.png"),
                          ),
                          Positioned(
                            top: 10,
                            left: 14,
                            child: Container(
                              width: 10,
                              height: 10,
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
                  Container(
                    width: 353.w,
                    height: 72.h,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                      border: Border.all(
                          color: const Color(0xff979797), width: 0.25),
                      color: const Color(0xffffffff),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 30,
                        right: 24,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
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
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 26,
                      left: 15,
                      right: 15,
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
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        StateWidgets(
                          statusTxt: "Total Bookings",
                          titleTxt: "Today",
                          numberTxt: "18",
                        ),
                        StateWidgets(
                          statusTxt: "Cancelled",
                          titleTxt: "Month",
                          numberTxt: "12%",
                        ),
                        StateWidgets(
                          statusTxt: "Total Bookings",
                          titleTxt: "Today",
                          numberTxt: "18",
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    thickness: 0.5,
                    color: Color(0xffdadada),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 22,
                      left: 15,
                      right: 15,
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
                              width: 44,
                              height: 34,
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
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          BookingWidget(),
                          BookingWidget(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
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
