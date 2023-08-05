import 'package:birthday_app/app/di/injector.dart';
import 'package:birthday_app/core/utils/colors.dart';
import 'package:birthday_app/core/utils/strings.dart';
import 'package:birthday_app/presentation/blocs/guests_bloc/guests_bloc.dart';
import 'package:birthday_app/presentation/screens/guests/guests_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// class InfoSectionWidget extends StatefulWidget {
//   const InfoSectionWidget({
//     required this.guestsLenght,
//     required this.textStyle,
//     super.key,
//   });

//   final int guestsLenght;
//   final TextStyle? textStyle;

//   @override
//   State<InfoSectionWidget> createState() => _InfoSectionWidgetState();
// }

// class _InfoSectionWidgetState extends State<InfoSectionWidget> {
//   @override
//   void initState() {
//     super.initState();
//     selectedValue = sorts[0];
//   }

//   final sorts = [
//     AppStrings.sortWithout,
//     AppStrings.sortName,
//   ];
//   String? selectedValue;

//   @override
//   Widget build(BuildContext context) {
//     final noun = getNoun(widget.guestsLenght, 'гость', 'гостя', 'гостей');

//     return BlocProvider(
//       create: (context) => injector<GuestsBloc>(),
//       child: Row(
//         children: [
//           Expanded(
//             child: Text(
//               '${widget.guestsLenght} $noun',
//               style: widget.textStyle,
//             ),
//           ),
//           BlocBuilder<GuestsBloc, GuestsState>(
//             builder: (context, state) {
//               return GestureDetector(
//                 onTapDown: (TapDownDetails details) async {
//                   double left = details.globalPosition.dx;
//                   double top = details.globalPosition.dy;

//                   await showMenu(
//                     context: context,
//                     position: RelativeRect.fromLTRB(left, top, 0, 0),
//                     items: sorts
//                         .map((sort) => PopupMenuItem<String>(
//                               value: sort,
//                               child: Text(sort),
//                               onTap: () {
//                                 setState(() {
//                                   selectedValue = sort;
//                                 });
//                                 context
//                                     .read<GuestsBloc>()
//                                     .add(GetAllGuestsEvent(sort));
//                               },
//                             ))
//                         .toList(),
//                     elevation: 8.0,
//                   );
//                 },
//                 child: Text(
//                   '$selectedValue   ▼',
//                   style: widget.textStyle?.copyWith(
//                     color: AppColors.black,
//                     decoration: TextDecoration.underline,
//                   ),
//                 ),
//               );
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }

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
