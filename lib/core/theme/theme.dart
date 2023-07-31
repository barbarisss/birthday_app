import 'package:birthday_app/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: AppColors.backgroundWhite,
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
    color: AppColors.darkGrey,
    fontSize: 16.sp,
  ),
  bodyMedium: TextStyle(
    color: AppColors.darkGrey,
    fontSize: 14.sp,
  ),
  bodySmall: TextStyle(
    color: AppColors.darkGrey,
    fontSize: 12.sp,
  ),
);
