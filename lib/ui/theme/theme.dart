import 'package:crypto_test/constants/fonts.dart';
import 'package:crypto_test/ui/theme/colors.dart';
import 'package:flutter/material.dart';

ThemeData createTheme() {
  return ThemeData(
    useMaterial3: false,
    primaryColor: Colors.white,
    colorScheme: const ColorScheme.light(
      error: AppColors.red,
      onSurface: AppColors.white,
    ),
    fontFamily: AppFonts.mainFont,
    scaffoldBackgroundColor: AppColors.darkBlue,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      centerTitle: false,
      elevation: 0,
    ),
    dividerColor: AppColors.white,
  );
}
