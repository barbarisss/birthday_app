import 'package:birthday_app/core/utils/colors.dart';
import 'package:birthday_app/data/models/wish/wish_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WishCardWidget extends StatelessWidget {
  const WishCardWidget({
    required this.wishModel,
    required this.textStyle,
    this.onTap,
    this.onDoubleTap,
    super.key,
  });

  final WishModel wishModel;
  final GestureTapCallback? onTap;
  final GestureTapCallback? onDoubleTap;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      onDoubleTap: onDoubleTap,
      child: ColoredBox(
        color: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  wishModel.title,
                  style: textStyle?.copyWith(
                    fontWeight: FontWeight.w500,
                    color: AppColors.black,
                  ),
                ),
                Text(
                  wishModel.link,
                  style: textStyle?.copyWith(
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
            ClipOval(
              child: Container(
                color:
                    wishModel.isSelected ? AppColors.darkGrey : AppColors.grey,
                width: 20.r,
                height: 20.r,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
