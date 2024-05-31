import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

TextStyle materialthemeverysmall({Color color = Colors.black}) => TextStyle(
      fontSize: 10.sp,
      decoration: TextDecoration.none,
      fontFamily: 'Roboto-Regular',
      fontStyle: FontStyle.normal,
      color: color,
      fontWeight: FontWeight.w400,
      height: 15.sp / 10.sp,
      letterSpacing: 0,
    );

TextStyle materialthemeheadlinelarge({Color color = Colors.black}) => TextStyle(
      fontSize: 32.sp,
      color: color,
      decoration: TextDecoration.none,
      fontFamily: 'Roboto-Regular',
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w400,
      height: 40.sp / 32.sp,
      letterSpacing: 0,
    );

TextStyle materialthemeheadlinemedium({Color color = Colors.black}) =>
    TextStyle(
      fontSize: 28.sp,
      decoration: TextDecoration.none,
      fontFamily: 'Roboto-Regular',
      fontStyle: FontStyle.normal,
      color: color,
      fontWeight: FontWeight.w400,
      height: 36.sp / 28.sp,
      letterSpacing: 0,
    );

TextStyle materialthemelabelsmall({Color color = Colors.black}) => TextStyle(
      fontSize: 11.sp,
      decoration: TextDecoration.none,
      fontFamily: 'Roboto-Medium',
      fontStyle: FontStyle.normal,
      color: color,
      fontWeight: FontWeight.w500,
      height: 16.sp / 11.sp,
      letterSpacing: 0.5,
    );

TextStyle materialthemeheadlinesmall({Color color = Colors.black}) => TextStyle(
      fontSize: 24.sp,
      decoration: TextDecoration.none,
      fontFamily: 'Roboto-Regular',
      color: color,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w400,
      height: 32.sp / 24.sp,
      letterSpacing: 0,
    );

TextStyle materialthemebodylarge({Color color = Colors.black}) => TextStyle(
      fontSize: 16.sp,
      decoration: TextDecoration.none,
      fontFamily: 'Roboto-Regular',
      fontStyle: FontStyle.normal,
      color: color,
      fontWeight: FontWeight.w400,
      height: 24.sp / 16.sp,
      letterSpacing: 0.5,
    );

TextStyle materialthemedisplaymedium({Color color = Colors.black}) => TextStyle(
      fontSize: 45.sp,
      decoration: TextDecoration.none,
      fontFamily: 'Roboto-Regular',
      color: color,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w400,
      height: 52.sp / 45.sp,
      letterSpacing: 0,
    );
