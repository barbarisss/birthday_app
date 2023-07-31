import 'package:birthday_app/core/utils/strings.dart';
import 'package:birthday_app/presentation/shared_widgets/modal_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GuestModalBottomSheet {
  GuestModalBottomSheet({
    required this.context,
    required this.onButtonPressed,
  });

  final BuildContext context;
  final VoidCallback? onButtonPressed;

  void show() {
    final modalBottomSheet = ModalBottomSheet(
      context: context,
      onButtonPressed: onButtonPressed,
      buttomTitle: AppStrings.signUp,
      content: Column(children: [
        TextField(),
        SizedBox(height: 12.h),
        TextField(),
        SizedBox(height: 12.h),
        TextField(),
        SizedBox(height: 12.h),
        TextField(),
        SizedBox(height: 12.h),
        TextField(),
      ]),
    );

    modalBottomSheet.show();
  }
}
