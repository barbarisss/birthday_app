import 'package:birthday_app/models/entertaiment_item.dart';
import 'package:birthday_app/models/menu_item.dart';
import 'package:birthday_app/utils/colors.dart';
import 'package:birthday_app/utils/constants.dart';
import 'package:birthday_app/utils/icons.dart';
import 'package:birthday_app/utils/images.dart';
import 'package:birthday_app/utils/links.dart';
import 'package:birthday_app/utils/strings.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

class MainScreenWidget extends StatelessWidget {
  MainScreenWidget({super.key});

  final List<String> swiperItems = [
    AppImages.camp,
    AppImages.camp,
    AppImages.camp,
    AppImages.camp,
  ];

  final List<MenuItem> menuItems = const [
    MenuItem(image: AppImages.canapes, title: AppStrings.canapes),
    MenuItem(image: AppImages.cheesePlate, title: AppStrings.cheesePlate),
    MenuItem(image: AppImages.shashlik, title: AppStrings.shashlik),
    MenuItem(image: AppImages.seafood, title: AppStrings.seafood),
    MenuItem(image: AppImages.fruits, title: AppStrings.fruits),
    MenuItem(image: AppImages.limonades, title: AppStrings.limonades),
  ];

  final List<EntertaimentItem> entertaimentItems = const [
    EntertaimentItem(
      icon: AppImages.boardGames,
      title: AppStrings.boardGames,
      discription: AppStrings.aboutBoardGames,
    ),
    EntertaimentItem(
      icon: AppImages.pool,
      title: AppStrings.pool,
      discription: AppStrings.aboutPool,
    ),
    EntertaimentItem(
      icon: AppImages.boardGames,
      title: AppStrings.boardGames,
      discription: AppStrings.aboutBoardGames,
    ),
    EntertaimentItem(
      icon: AppImages.pool,
      title: AppStrings.pool,
      discription: AppStrings.aboutPool,
    ),
    EntertaimentItem(
      icon: AppImages.boardGames,
      title: AppStrings.boardGames,
      discription: AppStrings.aboutBoardGames,
    ),
    EntertaimentItem(
      icon: AppImages.pool,
      title: AppStrings.pool,
      discription: AppStrings.aboutPool,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            SwiperWidget(
              textTheme: textTheme,
              items: swiperItems,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                children: [
                  SizedBox(height: 16.h),
                  Text(AppStrings.invite,
                      style: textTheme.bodyMedium?.copyWith(
                        color: AppColors.black,
                      )),
                  SizedBox(height: 16.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      YellowButtonWidget(
                        height: 50.h,
                        width: 156.w,
                        title: AppStrings.guests,
                      ),
                      YellowButtonWidget(
                        height: 50.h,
                        width: 156.w,
                        title: AppStrings.wishlist,
                      ),
                    ],
                  ),
                  SizedBox(height: 30.h),
                  _MenuViewWidget(
                    textTheme: textTheme,
                    items: menuItems,
                  ),
                  SizedBox(height: 30.h),
                  _EntertaimentViewWidget(
                    textTheme: textTheme,
                    items: entertaimentItems,
                  ),
                  SizedBox(height: 30.h),
                  _MapSectionWidget(textTheme: textTheme),
                  SizedBox(height: 100.h),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SwiperWidget extends StatefulWidget {
  const SwiperWidget({
    required this.textTheme,
    required this.items,
    super.key,
  });

  final TextTheme textTheme;
  final List<String> items;

  @override
  State<SwiperWidget> createState() => _SwiperWidgetState();
}

class _SwiperWidgetState extends State<SwiperWidget> {
  var activePage = 0;

  @override
  Widget build(BuildContext context) {
    final textTheme = widget.textTheme;

    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        CarouselSlider.builder(
          itemBuilder: (context, index, realIndex) {
            return Image.asset(
              widget.items[index],
              fit: BoxFit.fill,
              width: double.infinity,
            );
          },
          itemCount: widget.items.length,
          options: CarouselOptions(
            height: 250.h,
            viewportFraction: 1,
            enlargeCenterPage: false,
            onPageChanged: (page, _) {
              setState(() {
                activePage = page;
              });
            },
          ),
        ),
        Positioned(
          top: 22.h,
          left: 22.w,
          child: Text(
            AppStrings.date,
            style: textTheme.headlineSmall?.copyWith(
              fontFamily: 'Jost',
              color: AppColors.white,
              fontWeight: FontWeight.w700,
              height: 1,
            ),
          ),
        ),
        Positioned(
          bottom: 10.h,
          child: Align(
            child: Row(
              children: List.generate(widget.items.length, (index) {
                return Padding(
                  padding: EdgeInsets.only(right: 7.w),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      height: 5.h,
                      width: activePage == index ? 30.w : 5.w,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        shape: activePage == index
                            ? BoxShape.rectangle
                            : BoxShape.circle,
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
        ),
      ],
    );
  }
}

class YellowButtonWidget extends StatelessWidget {
  const YellowButtonWidget({
    required this.title,
    required this.height,
    required this.width,
    super.key,
  });

  final String title;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          title,
        ),
      ),
    );
  }
}

class _MenuViewWidget extends StatefulWidget {
  const _MenuViewWidget({
    required this.textTheme,
    required this.items,
    super.key,
  });

  final TextTheme textTheme;
  final List<MenuItem> items;

  @override
  State<_MenuViewWidget> createState() => _MenuViewWidgetState();
}

class _MenuViewWidgetState extends State<_MenuViewWidget> {
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
        SizedBox(height: 16.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 32.w,
              mainAxisSpacing: 16.w,
              childAspectRatio: AppConstants.childAspectRatio,
            ),
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: isColapsed == true ? 2 : widget.items.length,
            itemBuilder: (context, index) {
              return Column(
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
              );
            },
          ),
        ),
        SizedBox(height: 12.h),
        TextButton(
          onPressed: () {
            setState(() {
              isColapsed = !isColapsed;
            });
          },
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

class _EntertaimentViewWidget extends StatefulWidget {
  const _EntertaimentViewWidget({
    required this.textTheme,
    required this.items,
    super.key,
  });

  final TextTheme textTheme;
  final List<EntertaimentItem> items;

  @override
  State<_EntertaimentViewWidget> createState() =>
      _EntertaimentViewWidgetState();
}

class _EntertaimentViewWidgetState extends State<_EntertaimentViewWidget> {
  var isColapsed = true;

  @override
  Widget build(BuildContext context) {
    final textTheme = widget.textTheme;

    final textSize = widget.textTheme.bodyMedium?.fontSize;
    const textHeight = 1.5;
    final height =
        textSize != null ? (textSize * textHeight) : (14.sp * textHeight);

    return Column(
      children: [
        Text(
          AppStrings.entertainment,
          style: TextStyle(
            fontFamily: 'Yeseva One',
            color: AppColors.darkBlack,
            fontSize: 24.sp,
          ),
        ),
        SizedBox(height: 16.h),
        ListView.separated(
          itemBuilder: (context, index) {
            return Row(
              children: [
                Image.asset(
                  widget.items[index].icon,
                  height: height * 2,
                ),
                SizedBox(width: 12.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.items[index].title,
                        style: textTheme.bodyMedium?.copyWith(
                          color: AppColors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        widget.items[index].discription,
                        style: textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
                SvgPicture.asset(
                  AppIcons.arrow,
                  semanticsLabel: 'Arrow',
                  height: height / 2,
                ),
              ],
            );
          },
          separatorBuilder: (context, index) => SizedBox(height: 16.h),
          itemCount: isColapsed == true ? 2 : widget.items.length,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
        ),
        SizedBox(height: 16.h),
        TextButton(
          onPressed: () {
            setState(() {
              isColapsed = !isColapsed;
            });
          },
          child: Text(
            isColapsed == true ? AppStrings.expand : AppStrings.collapse,
            style: textTheme.bodyMedium?.copyWith(
              color: AppColors.black,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }
}

class _MapSectionWidget extends StatefulWidget {
  const _MapSectionWidget({
    required this.textTheme,
    super.key,
  });

  final TextTheme textTheme;

  @override
  State<_MapSectionWidget> createState() => _MapSectionWidgetState();
}

class _MapSectionWidgetState extends State<_MapSectionWidget> {
  @override
  Widget build(BuildContext context) {
    final textTheme = widget.textTheme;

    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 246.h,
          child: const YandexMap(),
        ),
        SizedBox(height: 4.h),
        Text(
          AppStrings.address,
          style: textTheme.bodyMedium,
        ),
        SizedBox(height: 4.h),
        TextButton(
          onPressed: goToGoogle,
          child: Text(
            AppStrings.goToWebsite,
            style: textTheme.bodyMedium?.copyWith(
              color: AppColors.black,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }

  void goToGoogle() {
    final Uri uri = Uri.parse(AppLinks.google);
    launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    );
  }
}
