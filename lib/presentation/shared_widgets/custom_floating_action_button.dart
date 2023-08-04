import 'package:birthday_app/core/utils/colors.dart';
import 'package:birthday_app/core/utils/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    required this.onPressed,
    super.key,
  });

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 16.w, bottom: 24.h),
      child: SizedBox(
        height: 84.h,
        child: FittedBox(
          child: FloatingActionButton(
            onPressed: onPressed,
            backgroundColor: AppColors.green,
            foregroundColor: AppColors.floatingButtonWhite,
            elevation: 0,
            child: SvgPicture.asset(
              AppIcons.plus,
              height: 30.h,
            ),
          ),
        ),
      ),
    );
  }
}
