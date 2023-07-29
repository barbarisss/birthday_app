import 'package:birthday_app/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: AppColors.backgroundWhite,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(AppColors.yellow),
        foregroundColor: MaterialStateProperty.all(AppColors.white),
        elevation: MaterialStateProperty.all(0),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.r),
          ),
        ),
        textStyle: MaterialStateProperty.all(
          TextStyle(
            fontFamily: 'Jost',
            fontWeight: FontWeight.w600,
            fontSize: 16.sp,
          ),
        ),
      ),
    ),
    textTheme: _textTheme,
    fontFamily: 'Jost',
  );
}

TextTheme _textTheme = TextTheme(
  headlineSmall: TextStyle(
    fontFamily: 'Yeseva One',
    color: AppColors.darkBlack,
    fontSize: 24.sp,
  ),
  titleLarge: TextStyle(
    color: AppColors.darkBlack,
    fontWeight: FontWeight.w500,
    fontSize: 20.sp,
  ),
  bodyLarge: TextStyle(
    color: AppColors.grey,
    fontSize: 16.sp,
  ),
  bodyMedium: TextStyle(
    color: AppColors.grey,
    fontSize: 14.sp,
  ),
  bodySmall: TextStyle(
    color: AppColors.grey,
    fontSize: 12.sp,
  ),
);
