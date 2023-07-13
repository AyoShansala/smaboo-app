import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WhiteContainer extends StatelessWidget {
  final Widget child;
  const WhiteContainer({super.key,required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 362.w,
      height: 80.h,
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
      child: child,
    );
  }
}
