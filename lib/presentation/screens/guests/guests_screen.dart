import 'package:auto_route/auto_route.dart';
import 'package:birthday_app/core/utils/constants.dart';
import 'package:birthday_app/core/utils/images.dart';
import 'package:birthday_app/core/utils/strings.dart';
import 'package:birthday_app/data/models/guest/guest_model.dart';
import 'package:birthday_app/presentation/screens/guests/widgets/guest_list.dart';
import 'package:birthday_app/presentation/shared_widgets/main_app_bar.dart';
import 'package:flutter/material.dart';

@RoutePage()
class GuestsScreenWidget extends StatelessWidget {
  const GuestsScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<GuestModel> guests = [
      GuestModel(
        avatar: AppImages.avatar,
        name: 'Иван',
        surname: 'Иванов',
        birthDate: DateTime.now(),
        phoneNumber: '+7 999 999 99 99',
        profession: 'Сварщик',
      ),
      GuestModel(
        avatar: AppImages.avatar,
        name: 'Иван',
        surname: 'Иванов',
        birthDate: DateTime.now(),
        phoneNumber: '+7 999 999 99 99',
        profession: 'Сварщик',
      ),
      GuestModel(
        avatar: AppImages.avatar,
        name: 'Иван',
        surname: 'Иванов',
        birthDate: DateTime.now(),
        phoneNumber: '+7 999 999 99 99',
        profession: 'Сварщик',
      ),
    ];

    return Scaffold(
      appBar: MainAppBarWidget(title: AppStrings.guests),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppConstants.mainPaddingWidth,
        ),
        child: Column(
          children: [
            SizedBox(height: AppConstants.mainPaddingHeight),
            Expanded(
              child: GuestListWidget(guests: guests),
            )
          ],
        ),
      ),
    );
  }
}
