import 'package:auto_route/auto_route.dart';
import 'package:birthday_app/core/utils/colors.dart';
import 'package:birthday_app/core/utils/constants.dart';
import 'package:birthday_app/core/utils/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainAppBarWidget extends StatelessWidget with PreferredSizeWidget {
  const MainAppBarWidget({
    required this.title,
    super.key,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return AppBar(
      title: Text(title),
      centerTitle: true,
      titleTextStyle: textTheme.titleLarge,
      leading: IconButton(
        onPressed: () => AutoRouter.of(context).pop(),
        icon: SvgPicture.asset(
          AppIcons.backArrow,
          width: 24.w,
        ),
      ),
      backgroundColor: AppColors.white,
      elevation: 15.h,
      shadowColor: AppColors.shadowGrey,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppConstants.appBarHeight);
}
