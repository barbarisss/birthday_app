import 'package:birthday_app/models/entertaiment_item.dart';
import 'package:birthday_app/models/menu_item.dart';
import 'package:birthday_app/utils/colors.dart';
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
  const MainScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            const SwiperWidget(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                children: [
                  SizedBox(height: 16.h),
                  Text(
                    AppStrings.invite,
                    style: TextStyle(fontSize: 14.sp),
                  ),
                  SizedBox(height: 16.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      YellowButtonWidget(title: AppStrings.guests),
                      YellowButtonWidget(title: AppStrings.wishlist),
                    ],
                  ),
                  SizedBox(height: 30.h),
                  const _MenuViewWidget(),
                  SizedBox(height: 30.h),
                  const _EntertaimentViewWidget(),
                  SizedBox(height: 30.h),
                  const _MapSectionWidget(),
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
  const SwiperWidget({super.key});

  @override
  State<SwiperWidget> createState() => _SwiperWidgetState();
}

class _SwiperWidgetState extends State<SwiperWidget> {
  List<String> images = [
    AppImages.camp,
    AppImages.camp,
    AppImages.camp,
    AppImages.camp,
  ];

  var activePage = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        CarouselSlider.builder(
          itemBuilder: (context, index, realIndex) {
            return Image.asset(
              images[index],
              fit: BoxFit.fill,
              width: double.infinity,
            );
          },
          itemCount: images.length,
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
            style: TextStyle(
              color: AppColors.white,
              fontWeight: FontWeight.w700,
              height: 1,
              fontSize: 24.sp,
            ),
          ),
        ),
        Positioned(
          bottom: 10.h,
          child: Align(
            child: Row(
              children: List.generate(images.length, (index) {
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
    super.key,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      width: 156.w,
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(AppColors.yellow),
          foregroundColor: MaterialStateProperty.all(AppColors.white),
          elevation: MaterialStateProperty.all(0),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.r),
            ),
          ),
        ),
        child: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16.sp,
          ),
        ),
      ),
    );
  }
}

class _MenuViewWidget extends StatefulWidget {
  const _MenuViewWidget({
    super.key,
  });

  @override
  State<_MenuViewWidget> createState() => _MenuViewWidgetState();
}

class _MenuViewWidgetState extends State<_MenuViewWidget> {
  List<MenuItem> items = const [
    MenuItem(image: AppImages.canapes, title: AppStrings.canapes),
    MenuItem(image: AppImages.cheesePlate, title: AppStrings.cheesePlate),
    MenuItem(image: AppImages.shashlik, title: AppStrings.shashlik),
    MenuItem(image: AppImages.seafood, title: AppStrings.seafood),
    MenuItem(image: AppImages.fruits, title: AppStrings.fruits),
    MenuItem(image: AppImages.limonades, title: AppStrings.limonades),
  ];

  var isColapsed = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          AppStrings.menu,
          style: TextStyle(
            fontFamily: 'Yeseva One',
            color: AppColors.darkBlack,
            fontSize: 24.sp,
          ),
        ),
        SizedBox(height: 16.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 32.w,
              mainAxisSpacing: 16.w,
              childAspectRatio: 0.865, //вот так все работает збс
            ),
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            // padding: EdgeInsets.all(20),
            itemCount: isColapsed == true ? 2 : items.length,
            itemBuilder: (context, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: clipImage(index, 25.r),
                    child: Image.asset(
                      items[index].image,
                    ),
                  ),
                  Text(
                    items[index].title,
                    style: TextStyle(
                      color: AppColors.grey,
                      fontSize: 14.sp,
                    ),
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
            style: TextStyle(
              color: AppColors.black,
              decoration: TextDecoration.underline,
              fontSize: 14.sp,
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
    super.key,
  });

  @override
  State<_EntertaimentViewWidget> createState() =>
      _EntertaimentViewWidgetState();
}

class _EntertaimentViewWidgetState extends State<_EntertaimentViewWidget> {
  List<EntertaimentItem> items = const [
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

  var isColapsed = true;

  @override
  Widget build(BuildContext context) {
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
                  items[index].icon,
                  height: (14.sp * 1.5) * 2,
                ),
                SizedBox(width: 12.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        items[index].title,
                        style: TextStyle(
                          color: AppColors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                        ),
                      ),
                      Text(
                        items[index].discription,
                        style: TextStyle(
                          color: AppColors.grey,
                          fontSize: 14.sp,
                        ),
                      ),
                    ],
                  ),
                ),
                SvgPicture.asset(
                  AppIcons.arrow,
                  semanticsLabel: 'Arrow',
                  height: (14.sp * 1.5) / 2,
                ),
              ],
            );
          },
          separatorBuilder: (context, index) => SizedBox(height: 16.h),
          itemCount: isColapsed == true ? 2 : items.length,
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
            style: TextStyle(
              color: AppColors.black,
              decoration: TextDecoration.underline,
              fontSize: 14.sp,
            ),
          ),
        ),
      ],
    );
  }
}

class _MapSectionWidget extends StatefulWidget {
  const _MapSectionWidget({super.key});

  @override
  State<_MapSectionWidget> createState() => _MapSectionWidgetState();
}

class _MapSectionWidgetState extends State<_MapSectionWidget> {
  @override
  Widget build(BuildContext context) {
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
          style: TextStyle(
            color: AppColors.grey,
            fontSize: 14.sp,
          ),
        ),
        SizedBox(height: 4.h),
        TextButton(
          onPressed: goToGoogle,
          child: Text(
            AppStrings.goToWebsite,
            style: TextStyle(
              color: AppColors.black,
              decoration: TextDecoration.underline,
              fontSize: 14.sp,
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
