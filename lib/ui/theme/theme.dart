import 'package:crypto_test/constants/fonts.dart';
import 'package:crypto_test/ui/theme/colors.dart';
import 'package:flutter/material.dart';

ThemeData createTheme() {
  return ThemeData(
    useMaterial3: false,
    primaryColor: Colors.white,
    colorScheme: const ColorScheme.light(
        error: Colors.red,
        onSurface: AppColors.white,
        surface: AppColors.white),
    fontFamily: AppFonts.mainFont,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      centerTitle: false,
      elevation: 0,
    ),
    dividerColor: AppColors.white,
  );
}
