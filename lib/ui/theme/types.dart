import 'package:crypto_test/constants/fonts.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

class AppTypes {
  static TextStyle sfPro16Regular({Color color = AppColors.white}) {
    return _buildTextStyle(color: color);
  }

  static TextStyle sfPro16Bold = _buildTextStyle(weight: FontWeight.w700);

  static TextStyle _buildTextStyle({
    String fontFamily = AppFonts.mainFont,
    double size = 16,
    FontWeight weight = FontWeight.w400,
    Color color = AppColors.white,
    TextDecoration? decoration,
    Color decorationColor = AppColors.white,
  }) {
    return TextStyle(
      fontFamily: fontFamily,
      fontSize: size,
      fontWeight: weight,
      color: color,
      decoration: decoration,
      decorationColor: decorationColor,
    );
  }
}
