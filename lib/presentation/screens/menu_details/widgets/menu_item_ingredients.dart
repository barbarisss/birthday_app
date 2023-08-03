import 'package:birthday_app/core/utils/constants.dart';
import 'package:birthday_app/core/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MenuItemIngredientWidget extends StatelessWidget {
  const MenuItemIngredientWidget({
    required this.ingredients,
    required this.textStyle,
    super.key,
  });

  final List<String> ingredients;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 1,
          child: Column(
            children: [
              IngredientWidget(
                ingredient: ingredients[0],
                textStyle: textStyle,
              ),
              SizedBox(height: 20.h),
              IngredientWidget(
                ingredient: ingredients[1],
                textStyle: textStyle,
              ),
            ],
          ),
        ),
        Flexible(
          flex: 1,
          child: Column(
            children: [
              IngredientWidget(
                ingredient: ingredients[2],
                textStyle: textStyle,
              ),
              SizedBox(height: 20.h),
              IngredientWidget(
                ingredient: ingredients[3],
                textStyle: textStyle,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class IngredientWidget extends StatelessWidget {
  const IngredientWidget({
    required this.ingredient,
    required this.textStyle,
    super.key,
  });

  final String ingredient;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          AppImages.ingredient,
          width: 24.w,
        ),
        SizedBox(width: AppConstants.mainPaddingWidth),
        Text(
          ingredient,
          style: textStyle,
        )
      ],
    );
  }
}
