import 'package:birthday_app/core/utils/colors.dart';
import 'package:birthday_app/presentation/screens/guests/get_noun_func.dart';
import 'package:flutter/material.dart';

class TopSectionWidget extends StatelessWidget {
  const TopSectionWidget({
    required this.guestsLenght,
    required this.popupMenuItems,
    required this.currentSortType,
    required this.textStyle,
    super.key,
  });

  final int guestsLenght;
  final List<PopupMenuEntry<dynamic>> popupMenuItems;
  final String currentSortType;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    final noun = getNoun(guestsLenght, 'гость', 'гостя', 'гостей');

    return Row(
      children: [
        Expanded(
          child: Text(
            '$guestsLenght $noun',
            style: textStyle,
          ),
        ),
        GestureDetector(
          onTapDown: (TapDownDetails details) async {
            double left = details.globalPosition.dx;
            double top = details.globalPosition.dy;

            await showMenu(
              context: context,
              position: RelativeRect.fromLTRB(left, top, 0, 0),
              items: popupMenuItems,
              elevation: 8.0,
            );
          },
          child: Text(
            '$currentSortType   ▼',
            style: textStyle?.copyWith(
              color: AppColors.black,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }
}
