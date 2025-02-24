import 'package:crypto_test/constants/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colors.dart';

class AppTypes {
  static TextStyle f14RegularWhite = _buildTextStyle();
  static TextStyle f14BoldWhite = _buildTextStyle(weight: FontWeight.w700);
  static TextStyle f14BoldWhite38 = _buildTextStyle(
    weight: FontWeight.w700,
    color: AppColors.white38,
  );
  static TextStyle f14BoldRed = _buildTextStyle(
    weight: FontWeight.w700,
    color: AppColors.red,
  );
  static TextStyle f14BoldGreen = _buildTextStyle(
    weight: FontWeight.w700,
    color: AppColors.green,
  );

  static TextStyle _buildTextStyle({
    String fontFamily = AppFonts.mainFont,
    double size = 14,
    FontWeight weight = FontWeight.w400,
    Color color = AppColors.white,
  }) {
    return TextStyle(
      fontFamily: fontFamily,
      fontSize: size.sp,
      fontWeight: weight,
      color: color,
    );
  }
}
