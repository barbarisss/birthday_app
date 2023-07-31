import 'package:birthday_app/core/utils/colors.dart';
import 'package:birthday_app/core/utils/constants.dart';
import 'package:birthday_app/presentation/shared_widgets/custom_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ModalBottomSheet {
  ModalBottomSheet({
    required this.context,
    required this.onButtonPressed,
    required this.buttomTitle,
    required this.content,
  });

  final BuildContext context;
  final VoidCallback? onButtonPressed;
  final String buttomTitle;
  final Widget content;

  void show() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: 100.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Radius.circular(12.r)),
          ),
          child: Column(
            children: [
              SizedBox(height: AppConstants.mainPaddingHeight),
              Container(
                width: 35.w,
                height: 4.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  color: AppColors.lightGrey,
                ),
              ),
              SizedBox(height: 18.h),
              content,
              SizedBox(height: 50.h),
              CustomButtonWidget(
                onPressed: onButtonPressed,
                height: 50.h,
                width: 156.w,
                title: buttomTitle,
              )
            ],
          ),
        );
      },
    );
  }
}
