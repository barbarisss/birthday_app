import 'package:birthday_app/core/utils/icons.dart';
import 'package:birthday_app/core/utils/strings.dart';
import 'package:birthday_app/presentation/shared_widgets/custom_text_field.dart';
import 'package:birthday_app/presentation/shared_widgets/modal_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/flutter_holo_date_picker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class WishModalBottomSheet {
  WishModalBottomSheet({
    required this.context,
    required this.onButtonPressed,
    this.onWillPop,
    required this.formKey,
    required this.titleController,
    required this.linkController,
  });

  final BuildContext context;
  final VoidCallback? onButtonPressed;
  final WillPopCallback? onWillPop;
  final Key? formKey;
  final TextEditingController titleController;
  final TextEditingController linkController;

  String? _textValidator(dynamic val) {
    if (val.toString().isEmpty) {
      return AppStrings.errorText;
    } else {
      return null;
    }
  }

  void show() {
    final modalBottomSheet = ModalBottomSheet(
      context: context,
      onButtonPressed: onButtonPressed,
      onWillPop: onWillPop,
      buttonTitle: AppStrings.addGift,
      buttonWidth: 181.w,
      content: Form(
        key: formKey,
        child: Column(children: [
          CustomTextField(
            controller: titleController,
            labelText: AppStrings.title,
            validator: (value) => _textValidator(value),
          ),
          SizedBox(height: 12.h),
          CustomTextField(
            controller: linkController,
            labelText: AppStrings.link,
            validator: (value) => _textValidator(value),
          ),
        ]),
      ),
    );

    modalBottomSheet.show();
  }
}
