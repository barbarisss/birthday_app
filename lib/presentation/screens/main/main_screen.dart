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
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  const SizedBox(height: 16),
                  const Text(
                    AppStrings.invite,
                    style: TextStyle(fontSize: 14),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      YellowButtonWidget(title: AppStrings.guests),
                      YellowButtonWidget(title: AppStrings.wishlist),
                    ],
                  ),
                  const SizedBox(height: 30),
                  const _MenuViewWidget(),
                  const SizedBox(height: 30),
                  const _EntertaimentViewWidget(),
                  const SizedBox(height: 30),
                  const _MapSectionWidget(),
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
            height: 250,
            viewportFraction: 1,
            enlargeCenterPage: false,
            onPageChanged: (page, _) {
              setState(() {
                activePage = page;
              });
            },
          ),
        ),
        const Positioned(
          top: 22,
          left: 22,
          child: Text(
            AppStrings.date,
            style: TextStyle(
              color: AppColors.white,
              fontWeight: FontWeight.w700,
              height: 1,
              fontSize: 24,
            ),
          ),
        ),
        Positioned(
          bottom: 10,
          child: Align(
            child: Row(
              children: List.generate(images.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 7),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    height: 5,
                    width: activePage == index ? 30 : 5,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(40),
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
      height: 50,
      width: 156,
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(AppColors.yellow),
          foregroundColor: MaterialStateProperty.all(AppColors.white),
          elevation: MaterialStateProperty.all(0),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
        ),
        child: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
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
        const Text(
          AppStrings.menu,
          style: TextStyle(
            fontFamily: 'Yeseva One',
            color: AppColors.darkBlack,
            fontSize: 24,
          ),
        ),
        const SizedBox(height: 16),
        GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: isColapsed == true ? 2 : items.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Image.asset(
                  items[index].image,
                  width: 140,
                  height: 154,
                ),
                SizedBox(
                  width: 140,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      items[index].title,
                      style: const TextStyle(
                        color: AppColors.grey,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
        TextButton(
          onPressed: () {
            setState(() {
              isColapsed = !isColapsed;
            });
          },
          child: Text(
            isColapsed == true ? 'Развернуть ▼' : 'Свернуть ▲',
            style: const TextStyle(
              color: AppColors.black,
              decoration: TextDecoration.underline,
              fontSize: 14,
            ),
          ),
        )
      ],
    );
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
        const Text(
          AppStrings.entertainment,
          style: TextStyle(
            fontFamily: 'Yeseva One',
            color: AppColors.darkBlack,
            fontSize: 24,
          ),
        ),
        const SizedBox(height: 16),
        ListView.separated(
          itemBuilder: (context, index) {
            return SizedBox(
              height: 42,
              child: ListTile(
                leading: Image.asset(
                  items[index].icon,
                  width: 42,
                  height: 42,
                ),
                title: Text(items[index].title),
                subtitle: Text(
                  items[index].discription,
                ),
                trailing: SvgPicture.asset(
                  AppIcons.arrow,
                  semanticsLabel: 'Arrow',
                ),
                contentPadding: EdgeInsets.zero,
              ),
            );
          },
          separatorBuilder: (context, index) => const SizedBox(height: 16),
          itemCount: isColapsed == true ? 2 : items.length,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
        ),
        const SizedBox(height: 16),
        TextButton(
          onPressed: () {
            setState(() {
              isColapsed = !isColapsed;
            });
          },
          child: Text(
            isColapsed == true ? 'Развернуть ▼' : 'Свернуть ▲',
            style: const TextStyle(
              color: AppColors.black,
              decoration: TextDecoration.underline,
              fontSize: 14,
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
        const SizedBox(
          width: double.infinity,
          height: 246,
          child: YandexMap(),
        ),
        const SizedBox(height: 4),
        const Text(
          AppStrings.address,
          style: TextStyle(color: AppColors.grey),
        ),
        const SizedBox(height: 4),
        TextButton(
          onPressed: goToGoogle,
          child: const Text(
            AppStrings.goToWebsite,
            style: TextStyle(
              color: AppColors.black,
              decoration: TextDecoration.underline,
              fontSize: 14,
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
