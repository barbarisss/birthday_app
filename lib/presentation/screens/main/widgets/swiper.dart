import 'package:birthday_app/core/utils/colors.dart';
import 'package:birthday_app/core/utils/strings.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
