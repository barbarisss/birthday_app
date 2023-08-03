import 'package:auto_route/auto_route.dart';
import 'package:birthday_app/core/utils/constants.dart';
import 'package:birthday_app/domain/models/menu_item_model.dart';
import 'package:birthday_app/presentation/screens/menu_details/widgets/menu_item_ingredients.dart';
import 'package:birthday_app/presentation/screens/menu_details/widgets/menu_item_image.dart';
import 'package:birthday_app/presentation/shared_widgets/main_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class MenuDetailsScreenWidget extends StatelessWidget {
  const MenuDetailsScreenWidget({
    required this.menuItem,
    super.key,
  });

  final MenuItemModel menuItem;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: MainAppBarWidget(title: menuItem.title),
      body: Stack(
        children: [
          Positioned(
            top: -AppConstants.appBarHeight,
            right: -AppConstants.appBarHeight * 0.75,
            child: MenuItemImageWidget(image: menuItem.image),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: 220.h, left: AppConstants.mainPaddingWidth),
                child: Text(
                  menuItem.title,
                  style: textTheme.headlineSmall,
                ),
              ),
              SizedBox(height: 60.h),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: AppConstants.mainPaddingWidth),
                child: MenuItemIngredientWidget(
                  ingredients: menuItem.ingredients,
                  textStyle: textTheme.bodyMedium,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
