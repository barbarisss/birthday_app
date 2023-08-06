import 'package:birthday_app/core/utils/colors.dart';
import 'package:birthday_app/data/models/wish/wish_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

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
    final int lenghtLimit = 35;

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
                InkWell(
                  onTap: () {
                    goToWishLink(wishModel.link);
                  },
                  child: Text(
                    wishModel.link.length > lenghtLimit
                        ? '${wishModel.link.substring(0, lenghtLimit)}...'
                        : wishModel.link,
                    style: textStyle?.copyWith(
                      decoration: TextDecoration.underline,
                    ),
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

  void goToWishLink(String link) {
    final Uri uri = Uri.parse(link);
    if (uri.isAbsolute) {
      launchUrl(
        uri,
        mode: LaunchMode.externalApplication,
      );
    } else {
      print("лооооооооооооооооох пииииииииииииииииииидр");
    }
  }
}
