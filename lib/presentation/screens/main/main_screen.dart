import 'package:birthday_app/utils/colors.dart';
import 'package:birthday_app/utils/images.dart';
import 'package:birthday_app/utils/strings.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MainScreenWidget extends StatelessWidget {
  const MainScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            child: Expanded(
          child: Column(
            children: [
              const SwiperWidget(),
              const SizedBox(height: 16),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  AppStrings.invite,
                  style: TextStyle(fontSize: 14),
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    YellowButtonWidget(title: AppStrings.guests),
                    YellowButtonWidget(title: AppStrings.wishlist),
                  ],
                ),
              ),
            ],
          ),
        )),
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
            '25 августа\n2023', // заменить на константу
            style: TextStyle(
              color: AppColors.white,
              fontWeight: FontWeight.w600, // добавить bold
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
