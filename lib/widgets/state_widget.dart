import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StateWidgets extends StatelessWidget {
  String? statusTxt;
  String? titleTxt;
  String? numberTxt;

  StateWidgets({
    super.key,
    this.statusTxt,
    this.titleTxt,
    this.numberTxt,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Container(
        width: 172.w,
        height: 119.h,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(
              20,
            ),
          ),
          color: const Color(0xffffffff),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 17,
            left: 14,
            right: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                statusTxt!,
                style: const TextStyle(
                  color: const Color(0xff000000),
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                  fontSize: 17.0,
                ),
              ),
              Text(
                titleTxt!,
                style: const TextStyle(
                  color: const Color(0xff878787),
                  fontWeight: FontWeight.w300,
                  fontStyle: FontStyle.normal,
                  fontSize: 14.0,
                ),
              ),
              SizedBox(
                // height: 32.h,
                child: Padding(
                  padding: const EdgeInsets.only(top: 13),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        numberTxt!,
                        style: const TextStyle(
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                          fontSize: 20.0,
                        ),
                      ),
                      Icon(
                        Icons.arrow_upward,
                        color: Colors.green,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
