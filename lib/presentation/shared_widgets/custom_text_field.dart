import 'package:birthday_app/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    required this.controller,
    required this.labelText,
    this.suffixIcon = '',
    this.inputNumber = false,
    this.inputFormatters,
    this.validator,
    this.onTap,
    super.key,
  });

  final FormFieldValidator? validator;
  final TextEditingController controller;
  final List<TextInputFormatter>? inputFormatters;
  final String labelText;
  final bool inputNumber;
  final String suffixIcon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return SizedBox(
      height: 58.h,
      child: TextFormField(
        onTap: onTap,
        controller: controller,
        style: textTheme.bodyLarge?.copyWith(
          color: AppColors.black,
          fontWeight: FontWeight.w500,
        ),
        cursorColor: AppColors.green,
        keyboardType: inputNumber ? TextInputType.phone : null,
        validator: validator,
        inputFormatters: inputFormatters,
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.textFieldWhite,
          labelText: labelText,
          labelStyle: textTheme.bodyLarge,
          suffixIcon: suffixIcon == ''
              ? null
              : Padding(
                  padding: EdgeInsetsDirectional.only(end: 12.w),
                  child: SvgPicture.asset(suffixIcon),
                ),
          suffixIconConstraints: BoxConstraints(
            minWidth: 24.w,
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(4.r),
          ),
        ),
      ),
    );
  }
}
