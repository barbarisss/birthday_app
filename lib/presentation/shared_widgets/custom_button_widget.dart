import 'package:birthday_app/core/utils/colors.dart';
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
    ElevatedButtonThemeData buttonTheme = Theme.of(context).elevatedButtonTheme;

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
              fontSize: 16.sp,
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
