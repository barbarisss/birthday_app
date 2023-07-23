import 'package:birthday_app/models/entertaiment_item.dart';
import 'package:birthday_app/models/menu_item.dart';
import 'package:birthday_app/presentation/shared_widgets/custom_button_widget.dart';
import 'package:birthday_app/utils/colors.dart';
import 'package:birthday_app/utils/constants.dart';
import 'package:birthday_app/utils/icons.dart';
import 'package:birthday_app/utils/images.dart';
import 'package:birthday_app/utils/links.dart';
import 'package:birthday_app/utils/strings.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

class MainScreenWidget extends StatelessWidget {
  const MainScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    const List<String> swiperItems = [
      AppImages.camp,
      AppImages.camp,
      AppImages.camp,
      AppImages.camp,
    ];

    const List<MenuItem> menuItems = [
      MenuItem(image: AppImages.canapes, title: AppStrings.canapes),
      MenuItem(image: AppImages.cheesePlate, title: AppStrings.cheesePlate),
      MenuItem(image: AppImages.shashlik, title: AppStrings.shashlik),
      MenuItem(image: AppImages.seafood, title: AppStrings.seafood),
      MenuItem(image: AppImages.fruits, title: AppStrings.fruits),
      MenuItem(image: AppImages.limonades, title: AppStrings.limonades),
    ];

    const List<EntertaimentItem> entertaimentItems = [
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

    return Scaffold(
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomButtonWidget(
                        onPressed: () {},
                        height: 50.h,
                        width: 156.w,
                        title: AppStrings.guests,
                      ),
                      CustomButtonWidget(
                        onPressed: () {},
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
            onPageChanged: (page, _) => swipePage(page),
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

  void swipePage(int page) {
    setState(() {
      activePage = page;
    });
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
  var turns = 0.0;

  @override
  Widget build(BuildContext context) {
    final textTheme = widget.textTheme;

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
            return _AnimatedEntertaimentItemWidget(
              textTheme: textTheme,
              item: widget.items[index],
            );
          },
          separatorBuilder: (context, index) => SizedBox(height: 16.h),
          itemCount: isColapsed == true ? 2 : widget.items.length,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
        ),
        SizedBox(height: AppConstants.mainPaddingHeight),
        TextButton(
          onPressed: changeState,
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

  void changeState() {
    setState(() {
      isColapsed = !isColapsed;
    });
  }
}

class _AnimatedEntertaimentItemWidget extends StatefulWidget {
  const _AnimatedEntertaimentItemWidget({
    required this.textTheme,
    required this.item,
    super.key,
  });

  final TextTheme textTheme;
  final EntertaimentItem item;

  @override
  State<_AnimatedEntertaimentItemWidget> createState() =>
      _AnimatedEntertaimentItemWidgetState();
}

class _AnimatedEntertaimentItemWidgetState
    extends State<_AnimatedEntertaimentItemWidget> {
  var animationStatus = false;

  @override
  Widget build(BuildContext context) {
    final textTheme = widget.textTheme;

    final textSize = widget.textTheme.bodyMedium?.fontSize;
    const textHeight = 1.5;
    final height =
        textSize != null ? (textSize * textHeight) : (14.sp * textHeight);

    const duration = Duration(milliseconds: 500);

    return GestureDetector(
      onTap: animateTo,
      child: Row(
        children: [
          AnimatedRotation(
            turns: animationStatus == true ? 1.0 : 0.0,
            duration: duration,
            onEnd: animateBack,
            child: Image.asset(
              widget.item.icon,
              height: height * 2,
            ),
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AnimatedAlign(
                  duration: duration,
                  alignment: animationStatus == true
                      ? Alignment.centerRight
                      : Alignment.centerLeft,
                  child: Text(
                    widget.item.title,
                    style: textTheme.bodyMedium?.copyWith(
                      color: AppColors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                AnimatedOpacity(
                  duration: duration,
                  opacity: animationStatus == true ? 0.0 : 1.0,
                  child: Text(
                    widget.item.discription,
                    style: textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
          ),
          AnimatedSize(
            duration: duration,
            curve: Curves.linear,
            child: SvgPicture.asset(
              AppIcons.arrow,
              semanticsLabel: 'Arrow',
              height: animationStatus == true ? height : height / 2,
            ),
          ),
        ],
      ),
    );
  }

  void animateTo() {
    setState(() {
      animationStatus = true;
    });
  }

  void animateBack() {
    setState(() {
      animationStatus = false;
    });
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
    const point = Point(latitude: 47.242516, longitude: 38.690101);

    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 246.h,
          child: YandexMap(
            mapObjects: [
              PlacemarkMapObject(
                  mapId: const MapObjectId('0'),
                  point: point,
                  icon: PlacemarkIcon.single(
                    PlacemarkIconStyle(
                      image: BitmapDescriptor.fromAssetImage(AppImages.marker),
                      scale: 0.08,
                    ),
                  ))
            ],
            onMapCreated: (YandexMapController controller) {
              controller.moveCamera(
                CameraUpdate.newCameraPosition(
                  const CameraPosition(
                    target: point,
                    zoom: 10,
                  ),
                ),
              );
            },
            gestureRecognizers: {
              Factory<OneSequenceGestureRecognizer>(
                  () => EagerGestureRecognizer())
            },
          ),
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
