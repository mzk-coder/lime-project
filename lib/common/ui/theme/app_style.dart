
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_color.dart';


class AppStyle {
  const AppStyle._();


  static TextStyle textStyle10({Color color = AppColor.greyColor4,
    FontWeight fontWeight = FontWeight.w400}) {
    return GoogleFonts.poppins(
      fontSize: 10.sp,
      fontWeight: fontWeight,
      color: color,
    );
  }

  static TextStyle textStyle6({Color color = AppColor.greyColor4,
    FontWeight fontWeight = FontWeight.w400}) {
    return GoogleFonts.poppins(
      fontSize: 7.sp,
      fontWeight: fontWeight,
      color: color,
    );
  }

  static TextStyle textStyle8({Color color = AppColor.greyColor4,
    FontWeight fontWeight = FontWeight.w400}) {
    return GoogleFonts.poppins(
      fontSize: 8.sp,
      fontWeight: fontWeight,
      color: color,
    );
  }


  static TextStyle textStyleMedium10({Color color = AppColor.greyColor4,
    FontWeight fontWeight = FontWeight.w600}) {
    return GoogleFonts.poppins(
      fontSize: 10.sp,
      fontWeight: fontWeight,
      color: color,
    );
  }

  static TextStyle textStyle12({Color color = AppColor.greyColor6,
    FontWeight fontWeight = FontWeight.w400}) {
    return GoogleFonts.poppins(
      fontSize: 12.sp,
      fontWeight: fontWeight,
      color: color,
    );
  }

  static TextStyle textStyle14({Color color = AppColor.greyColor4,
    FontWeight fontWeight = FontWeight.w400}) {
    return GoogleFonts.poppins(
      fontSize: 14.sp,
      fontWeight: fontWeight,
      color: color,
    );
  }

  static TextStyle textStyleMedium14({Color color = AppColor.greyColor6,
    FontWeight fontWeight = FontWeight.w500}) {
    return GoogleFonts.poppins(
      fontSize: 14.sp,
      fontWeight: fontWeight,
      color: color,
    );
  }

  static TextStyle textStyle16(
      {Color color = AppColor.white, FontWeight fontWeight = FontWeight.w400}) {
    return GoogleFonts.poppins(
      fontSize: 16.sp,
      fontWeight: fontWeight,
      color: color,
    );
  }

  static TextStyle textStyle18(
      {Color color = AppColor.white, FontWeight fontWeight = FontWeight.w400}) {
    return GoogleFonts.poppins(
      fontSize: 18.sp,
      fontWeight: fontWeight,
      color: color,
    );
  }

  static TextStyle textStyle20(
      {Color color = AppColor.white, FontWeight fontWeight = FontWeight.w400}) {
    return GoogleFonts.poppins(
      fontSize: 20.sp,
      fontWeight: fontWeight,
      color: color,
    );
  }

  static TextStyle textStyleMedium16(
      {Color color = AppColor.white, FontWeight fontWeight = FontWeight.w600}) {
    return GoogleFonts.poppins(
        fontWeight: fontWeight, color: color, fontSize: 16.sp);
  }

  static TextStyle textStyle26({Color color = AppColor.greyColor7,
    FontWeight fontWeight = FontWeight.bold}) {
    return GoogleFonts.poppins(
      fontSize: 28.sp,
      fontWeight: fontWeight,
      color: color,
    );
  }

  static TextStyle textStyle28({Color color = AppColor.greyColor7,
    FontWeight fontWeight = FontWeight.bold}) {
    return GoogleFonts.poppins(
      fontSize: 28.sp,
      fontWeight: fontWeight,
      color: color,
    );
  }
}
