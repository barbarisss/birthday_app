import 'package:auto_route/auto_route.dart';
import 'package:birthday_app/app/route/app_router.gr.dart';
import 'package:birthday_app/presentation/shared_widgets/custom_button_widget.dart';
import 'package:birthday_app/core/utils/colors.dart';
import 'package:birthday_app/core/utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonSectionWigdet extends StatelessWidget {
  const ButtonSectionWigdet({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomButtonWidget(
          onPressed: () => AutoRouter.of(context).push(const GuestsRoute()),
          color: AppColors.yellow,
          height: 50.h,
          width: 156.w,
          title: AppStrings.guests,
        ),
        CustomButtonWidget(
          onPressed: () {},
          color: AppColors.yellow,
          height: 50.h,
          width: 156.w,
          title: AppStrings.wishlist,
        ),
      ],
    );
  }
}
