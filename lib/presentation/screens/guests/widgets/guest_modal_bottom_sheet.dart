import 'package:birthday_app/core/utils/icons.dart';
import 'package:birthday_app/core/utils/strings.dart';
import 'package:birthday_app/presentation/shared_widgets/custom_text_field.dart';
import 'package:birthday_app/presentation/shared_widgets/modal_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/flutter_holo_date_picker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class GuestModalBottomSheet {
  GuestModalBottomSheet({
    required this.context,
    required this.onButtonPressed,
    this.onWillPop,
    required this.formKey,
    required this.nameController,
    required this.surnameController,
    required this.birthDateController,
    required this.phoneController,
    required this.professionController,
  });

  final BuildContext context;
  final VoidCallback? onButtonPressed;
  final WillPopCallback? onWillPop;
  final Key? formKey;
  final TextEditingController nameController;
  final TextEditingController surnameController;
  final TextEditingController birthDateController;
  final TextEditingController phoneController;
  final TextEditingController professionController;

  String? _textValidator(dynamic val) {
    if (val.toString().isEmpty) {
      return '*Обязательное поле для заполнения';
    } else {
      return null;
    }
  }

  String _format(DateTime date) {
    String pattern = 'dd.MM.yyyy';
    return DateFormat(pattern).format(date);
  }

  void show() {
    final modalBottomSheet = ModalBottomSheet(
      context: context,
      onButtonPressed: onButtonPressed,
      onWillPop: onWillPop,
      buttomTitle: AppStrings.signUp,
      content: Form(
        key: formKey,
        child: Column(children: [
          CustomTextField(
            controller: nameController,
            labelText: AppStrings.name,
            validator: (value) => _textValidator(value),
          ),
          SizedBox(height: 12.h),
          CustomTextField(
            controller: surnameController,
            labelText: AppStrings.surname,
            validator: (value) => _textValidator(value),
          ),
          SizedBox(height: 12.h),
          CustomTextField(
            controller: birthDateController,
            labelText: AppStrings.birthDate,
            suffixIcon: AppIcons.calendar,
            textInputType: TextInputType.none,
            onTap: () async {
              final pickedDate = await DatePicker.showSimpleDatePicker(
                context,
                initialDate: DateTime.now(),
                firstDate: DateTime(1962),
                lastDate: DateTime.now(),
                dateFormat: "dd-MMMM-yyyy",
                locale: DateTimePickerLocale.ru,
                titleText: AppStrings.choseDate,
                looping: true,
              );
              if (pickedDate != null) {
                birthDateController.text = _format(pickedDate);
              }
            },
            validator: (value) => _textValidator(value),
          ),
          SizedBox(height: 12.h),
          CustomTextField(
            controller: phoneController,
            labelText: AppStrings.phone,
            textInputType: TextInputType.phone,
          ),
          SizedBox(height: 12.h),
          CustomTextField(
            controller: professionController,
            labelText: AppStrings.profession,
          ),
        ]),
      ),
    );

    modalBottomSheet.show();
  }
}
