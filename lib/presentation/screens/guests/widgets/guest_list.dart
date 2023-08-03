import 'package:birthday_app/core/utils/colors.dart';
import 'package:birthday_app/core/utils/constants.dart';
import 'package:birthday_app/data/models/guest/guest_model.dart';
import 'package:birthday_app/presentation/screens/guests/guests_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GuestListWidget extends StatelessWidget {
  const GuestListWidget({
    required this.guests,
    super.key,
  });

  final List<GuestModel> guests;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Column(
          children: [
            _GuestWidget(
              guest: guests[index],
            ),
            SizedBox(height: AppConstants.mainPaddingHeight),
          ],
        );
      },
      itemCount: guests.length,
      physics: AlwaysScrollableScrollPhysics(),
    );
  }
}

class _GuestWidget extends StatelessWidget {
  const _GuestWidget({
    required this.guest,
    super.key,
  });

  final GuestModel guest;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    const MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start;
    const CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.start;

    final age = calculateAge(guest.birthDate);
    final noun = getNoun(age, 'год', 'года', 'лет');

    return Row(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Image.asset(
          guest.avatar,
          height: 64.h,
        ),
        SizedBox(width: AppConstants.mainPaddingWidth),
        Column(
          mainAxisAlignment: mainAxisAlignment,
          crossAxisAlignment: crossAxisAlignment,
          children: [
            Text(
              '${guest.name} ${guest.surname}',
              style: textTheme.bodyMedium?.copyWith(
                color: AppColors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              '$age $noun',
              style: textTheme.bodySmall?.copyWith(
                height: 1,
              ),
            ),
            Text(
              guest.profession,
              style: textTheme.bodyMedium,
            ),
          ],
        )
      ],
    );
  }

  String calculateAge(DateTime birthDate) {
    final now = DateTime.now();
    final age = (now.difference(birthDate).inDays / 365).floor();
    return age.toString();
  }
}
