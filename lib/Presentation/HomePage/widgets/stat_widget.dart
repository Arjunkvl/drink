import 'package:drink/Presentation/core/TextStyle/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StatBox extends StatelessWidget {
  final Color containerColor;
  final Color textColor;
  final String title;
  final String value;
  const StatBox({
    super.key,
    required this.title,
    required this.value,
    required this.containerColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 4,
              offset: const Offset(0, 4),
              color: Colors.black.withOpacity(0.25),
            ),
            BoxShadow(
              blurRadius: 4,
              offset: const Offset(0, 4),
              color: Colors.black.withOpacity(0.25),
            )
          ],
          borderRadius: BorderRadius.circular(13),
          color: containerColor,
        ),
        width: 100.w,
        height: 100.w,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 23.h),
              child: Text(
                title,
                style: materialthemelabelsmall(color: textColor),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 2.h),
              child: Text(
                value,
                style: materialthemeheadlinemedium(color: textColor),
              ),
            ),
          ],
        ));
  }
}
