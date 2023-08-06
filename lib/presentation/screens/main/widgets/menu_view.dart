import 'package:auto_route/auto_route.dart';
import 'package:birthday_app/app/route/app_router.gr.dart';
import 'package:birthday_app/core/utils/colors.dart';
import 'package:birthday_app/core/utils/constants.dart';
import 'package:birthday_app/core/utils/strings.dart';
import 'package:birthday_app/data/models/menu_item/menu_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MenuViewWidget extends StatefulWidget {
  const MenuViewWidget({
    required this.textTheme,
    required this.items,
    super.key,
  });

  final TextTheme textTheme;
  final List<MenuItemModel> items;

  @override
  State<MenuViewWidget> createState() => _MenuViewWidgetState();
}

class _MenuViewWidgetState extends State<MenuViewWidget> {
  var isColapsed = false;

  @override
  Widget build(BuildContext context) {
    final textTheme = widget.textTheme;

    return Column(
      children: [
        Text(
          AppStrings.menu,
          style: textTheme.headlineSmall,
        ),
        SizedBox(height: AppConstants.mainPaddingHeight),
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: AppConstants.mainPaddingWidth),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: AppConstants.mainPaddingWidth * 2,
              mainAxisSpacing: AppConstants.mainPaddingWidth,
              childAspectRatio: AppConstants.childAspectRatio,
            ),
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: isColapsed == true ? 2 : widget.items.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  AutoRouter.of(context)
                      .push(MenuDetailsRoute(menuItem: widget.items[index]));
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: clipImage(index, 25.r),
                      child: Image.asset(
                        widget.items[index].image,
                      ),
                    ),
                    Text(
                      widget.items[index].title,
                      style: textTheme.bodyMedium,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        SizedBox(height: 12.h),
        TextButton(
          onPressed: changeState,
          child: Text(
            isColapsed == true ? AppStrings.expand : AppStrings.collapse,
            style: textTheme.bodyMedium?.copyWith(
              color: AppColors.black,
              decoration: TextDecoration.underline,
            ),
          ),
        )
      ],
    );
  }

  void changeState() {
    setState(() {
      isColapsed = !isColapsed;
    });
  }

  BorderRadiusGeometry clipImage(int index, double radius) {
    final borderRadius = Radius.circular(radius);

    if (index % 2 == 0) {
      return BorderRadius.only(
        topRight: borderRadius,
        bottomLeft: borderRadius,
      );
    } else {
      return BorderRadius.only(
        topLeft: borderRadius,
        bottomRight: borderRadius,
      );
    }
  }
}
