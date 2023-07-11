import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookingCard extends StatefulWidget {
  String? cardName;
  String? cardDay;
  String? cardNumber;
  BookingCard({
    super.key,
    this.cardName,
    this.cardDay,
    this.cardNumber,
  });

  @override
  State<BookingCard> createState() => _BookingCardState();
}

class _BookingCardState extends State<BookingCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 12.h,
      ),
      child: Container(
        width: 352.w,
        height: 81.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(20.r),
          ),
          color: const Color(0xffffffff),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            left: 14.w,
            right: 17.w,
            top: 17.h,
            bottom: 19.h,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.cardName!,
                    style: TextStyle(
                      color: const Color(0xff000000),
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins",
                      fontStyle: FontStyle.normal,
                      fontSize: 17.sp,
                    ),
                  ),
                  Text(
                    widget.cardDay!,
                    style: TextStyle(
                      color: const Color(0xff878787),
                      fontWeight: FontWeight.w300,
                      fontFamily: "Poppins",
                      fontStyle: FontStyle.normal,
                      fontSize: 14.sp,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    widget.cardNumber!,
                    style: TextStyle(
                      color: const Color(0xff000000),
                      fontWeight: FontWeight.w700,
                      fontFamily: "Gilroy",
                      fontStyle: FontStyle.normal,
                      fontSize: 32.sp,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 2.w,
                      bottom: 2.h,
                    ),
                    child: Image.asset("icons/green_up.png"),
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
