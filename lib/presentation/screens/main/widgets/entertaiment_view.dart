import 'package:birthday_app/core/utils/colors.dart';
import 'package:birthday_app/core/utils/constants.dart';
import 'package:birthday_app/core/utils/icons.dart';
import 'package:birthday_app/core/utils/strings.dart';
import 'package:birthday_app/data/models/entertaiment_item/entertaiment_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EntertaimentViewWidget extends StatefulWidget {
  const EntertaimentViewWidget({
    required this.textTheme,
    required this.items,
    super.key,
  });

  final TextTheme textTheme;
  final List<EntertaimentItemModel> items;

  @override
  State<EntertaimentViewWidget> createState() => _EntertaimentViewWidgetState();
}

class _EntertaimentViewWidgetState extends State<EntertaimentViewWidget> {
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
  final EntertaimentItemModel item;

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
