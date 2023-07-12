import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDropdowns extends StatefulWidget {
  String? dropdownImage;
  String? dropdownName;
  double? padding;
  CustomDropdowns({
    super.key,
    this.dropdownImage,
    this.dropdownName,
    this.padding,
  });

  @override
  State<CustomDropdowns> createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdowns> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 159.w,
      height: 70.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        border: Border.all(
          color: const Color(0xff979797),
          width: 0.25,
        ),
        color: const Color(0xffffffff),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          left: widget.padding!,
          right: 10.w,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset("icons/${widget.dropdownImage!}"),
                Padding(
                  padding: EdgeInsets.only(
                    left: 8.w,
                  ),
                  child: Text(
                    widget.dropdownName!,
                    style: TextStyle(
                      color: const Color(0xff2e2e2e),
                      fontWeight: FontWeight.w300,
                      fontFamily: "Poppins",
                      fontStyle: FontStyle.normal,
                      fontSize: 15.sp,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 20.w,
              height: 20.w,
              child: Image.asset("icons/arrowDown.png"),
            )
          ],
        ),
      ),
    );
  }
}
