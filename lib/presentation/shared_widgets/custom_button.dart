import 'package:birthday_app/core/utils/colors.dart';
import 'package:birthday_app/core/utils/constants.dart';
import 'package:birthday_app/core/utils/font_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({
    required this.onPressed,
    required this.color,
    required this.height,
    required this.width,
    required this.title,
    super.key,
  });

  final VoidCallback? onPressed;
  final Color color;
  final double height;
  final double width;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
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
              fontSize: AppFontSize.fs16,
              height: AppConstants.lh23 / AppFontSize.fs16,
            ),
          ),
        ),
        child: Text(
          title,
        ),
      ),
    );
  }
}
