import 'package:crypto_test/ui/theme/colors.dart';
import 'package:crypto_test/ui/theme/types.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonStyles {
  static ButtonStyle blueButton() {
    return ElevatedButton.styleFrom(
      foregroundColor: AppColors.white,
      backgroundColor: AppColors.midBlue,
      padding: EdgeInsets.symmetric(horizontal: 0.w, vertical: 10.h),
      textStyle: AppTypes.f14BoldWhite,
      alignment: Alignment.center,
      elevation: 0,
      minimumSize: Size(60.w, 0),
      side: const BorderSide(color: AppColors.white),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.r)),
      ),
    );
  }

  static ButtonStyle transparentButton() {
    return ElevatedButton.styleFrom(
      foregroundColor: AppColors.white,
      backgroundColor: AppColors.transparent,
      padding: EdgeInsets.symmetric(horizontal: 0.w, vertical: 10.h),
      textStyle: AppTypes.f14BoldWhite,
      alignment: Alignment.center,
      elevation: 0,
      minimumSize: Size(60.w, 0),
      side: const BorderSide(color: AppColors.white),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.r)),
      ),
    );
  }
}
