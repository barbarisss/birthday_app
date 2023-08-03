import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MenuItemImageWidget extends StatelessWidget {
  const MenuItemImageWidget({
    required this.image,
    super.key,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.asset(
        image,
        height: 264.h,
      ),
    );
  }
}
