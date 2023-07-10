import 'package:flutter/material.dart';
import 'package:smaboo_uis/Components/nav_bar_icon.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 389.9999999999991,
      height: 87,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0x0f000000),
            offset: Offset(0, 1),
            blurRadius: 20,
            spreadRadius: 0,
          )
        ],
        color: Color(0xffffffff),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            NavBarIcon(
              colorValue: Color(0xff31d3a2),
              iconName: "home24.png",
              iconTitle: "Home",
            ),
            NavBarIcon(
              iconName: "calan24.png",
              iconTitle: "Calender",
            ),
            NavBarIcon(
              iconName: "booking24.png",
              iconTitle: "Bookings",
            ),
            NavBarIcon(
              iconName: "custom24.png",
              iconTitle: "Customers",
            ),
          ],
        ),
      ),
    );
  }
}
