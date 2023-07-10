import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NavBarIcon extends StatelessWidget {
  String? iconName;
  String? iconTitle;
  Color? colorValue;
  NavBarIcon({
    super.key,
    this.iconName,
    this.iconTitle,
    this.colorValue,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 23.w,
          height: 6.h,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(3),
            ),
            color: colorValue ?? (colorValue = Colors.white),
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Image.asset("icons/$iconName"),
        SizedBox(
          height: 4.h,
        ),
        Text(
          iconTitle!,
          style: const TextStyle(
            color: const Color(0xff000000),
            fontWeight: FontWeight.w300,
            fontStyle: FontStyle.normal,
            fontSize: 12.0,
          ),
        ),
      ],
    );
  }
}
