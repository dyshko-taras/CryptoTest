import 'package:crypto_test/constants/strings.dart';
import 'package:crypto_test/ui/theme/colors.dart';
import 'package:crypto_test/ui/theme/types.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class AppSnackBars {
  static void showSuccessSnackBar(BuildContext context, String message) {
    _showSnackBar(
      context,
      message,
      backgroundColor: AppColors.green,
      textStyle: AppTypes.f14BoldWhite,
      actionTextColor: AppColors.white,
    );
  }

  static void showErrorSnackBar(BuildContext context, String message) {
    _showSnackBar(
      context,
      message,
      backgroundColor: AppColors.red,
      textStyle: AppTypes.f14BoldWhite,
      actionTextColor: AppColors.white,
    );
  }

  static void _showSnackBar(
    BuildContext context,
    String message, {
    required Color backgroundColor,
    required TextStyle textStyle,
    required Color actionTextColor,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        duration: const Duration(seconds: 2),
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0.r),
        ),
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
        content: Text(message, style: textStyle),
        action: SnackBarAction(
          label: AppStrings.close,
          textColor: actionTextColor,
          onPressed: () {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
          },
        ),
        dismissDirection: DismissDirection.horizontal,
      ),
    );
  }
}
