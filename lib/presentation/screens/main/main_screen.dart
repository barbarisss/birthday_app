import 'package:auto_route/auto_route.dart';
import 'package:birthday_app/app/di/injector.dart';
import 'package:birthday_app/data/models/entertainment_item/entertainment_item_model.dart';
import 'package:birthday_app/presentation/blocs/entertainment_bloc/entertainment_bloc.dart';
import 'package:birthday_app/presentation/blocs/menu_bloc/menu_bloc.dart';
import 'package:birthday_app/presentation/screens/main/widgets/button_section.dart';
import 'package:birthday_app/presentation/screens/main/widgets/entertaiment_view.dart';
import 'package:birthday_app/presentation/screens/main/widgets/map_section.dart';
import 'package:birthday_app/presentation/screens/main/widgets/menu_view.dart';
import 'package:birthday_app/presentation/screens/main/widgets/swiper.dart';
import 'package:birthday_app/core/utils/colors.dart';
import 'package:birthday_app/core/utils/constants.dart';
import 'package:birthday_app/core/utils/images.dart';
import 'package:birthday_app/core/utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class MainScreenWidget extends StatelessWidget {
  const MainScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    late Widget menuWidget;
    late Widget entertainmentWidget;

    const List<String> swiperItems = [
      AppImages.camp,
      AppImages.camp,
      AppImages.camp,
      AppImages.camp,
    ];

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              injector<MenuBloc>()..add(const GetAllMenuItemsEvent()),
        ),
        BlocProvider(
          create: (context) => injector<EntertainmentBloc>()
            ..add(const GetAllEntertainmentItemsEvent()),
        ),
      ],
      child: Scaffold(
        body: SafeArea(
          child: ListView(
            children: [
              SwiperWidget(
                textTheme: textTheme,
                items: swiperItems,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: AppConstants.mainPaddingWidth),
                child: Column(
                  children: [
                    SizedBox(height: AppConstants.mainPaddingHeight),
                    Text(AppStrings.invite,
                        style: textTheme.bodyMedium?.copyWith(
                          color: AppColors.black,
                        )),
                    SizedBox(height: AppConstants.mainPaddingHeight),
                    const ButtonSectionWigdet(),
                    SizedBox(height: 30.h),
                    BlocBuilder<MenuBloc, MenuState>(
                      builder: (context, state) {
                        state.maybeWhen(
                          orElse: () {
                            menuWidget = const Center(
                                child: CircularProgressIndicator(
                              color: AppColors.green,
                            ));
                          },
                          loaded: (menuItems) {
                            menuWidget = MenuViewWidget(
                              textTheme: textTheme,
                              items: menuItems,
                            );
                          },
                        );
                        return menuWidget;
                      },
                    ),
                    SizedBox(height: 30.h),
                    BlocBuilder<EntertainmentBloc, EntertainmentState>(
                      builder: (context, state) {
                        state.maybeWhen(
                          orElse: () {
                            entertainmentWidget = const Center(
                                child: CircularProgressIndicator(
                              color: AppColors.green,
                            ));
                          },
                          loaded: (entertainmentItems) {
                            entertainmentWidget = EntertainmentViewWidget(
                              textTheme: textTheme,
                              items: entertainmentItems,
                            );
                          },
                        );
                        return entertainmentWidget;
                      },
                    ),
                    SizedBox(height: 30.h),
                    MapSectionWidget(textTheme: textTheme),
                    SizedBox(height: 100.h),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
