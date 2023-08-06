import 'package:birthday_app/core/utils/colors.dart';
import 'package:birthday_app/core/utils/constants.dart';
import 'package:birthday_app/core/utils/font_size.dart';
import 'package:flutter/material.dart';

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
    fontSize: AppFontSize.fs24,
    height: AppConstants.lh24 / AppFontSize.fs24,
  ),
  titleLarge: TextStyle(
    color: AppColors.darkBlack,
    fontWeight: FontWeight.w500,
    fontSize: AppFontSize.fs20,
    height: AppConstants.lh20 / AppFontSize.fs20,
  ),
  bodyLarge: TextStyle(
    color: AppColors.darkGrey,
    fontSize: AppFontSize.fs16,
    height: AppConstants.lh20 / AppFontSize.fs16,
  ),
  bodyMedium: TextStyle(
    color: AppColors.darkGrey,
    fontSize: AppFontSize.fs14,
    height: AppConstants.lh20 / AppFontSize.fs14,
  ),
  bodySmall: TextStyle(
    color: AppColors.darkGrey,
    fontSize: AppFontSize.fs12,
    height: AppConstants.lh12 / AppFontSize.fs12,
  ),
);
