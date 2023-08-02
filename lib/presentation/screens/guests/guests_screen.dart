import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:birthday_app/app/di/injector.dart';
import 'package:birthday_app/core/utils/colors.dart';
import 'package:birthday_app/core/utils/constants.dart';
import 'package:birthday_app/core/utils/images.dart';
import 'package:birthday_app/core/utils/strings.dart';
import 'package:birthday_app/data/models/guest/guest_model.dart';
import 'package:birthday_app/presentation/blocs/guests_bloc/guests_bloc.dart';
import 'package:birthday_app/presentation/screens/guests/widgets/guest_list.dart';
import 'package:birthday_app/presentation/screens/guests/widgets/guest_modal_bottom_sheet.dart';
import 'package:birthday_app/presentation/shared_widgets/custom_floating_action_button.dart';
import 'package:birthday_app/presentation/shared_widgets/main_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class GuestsScreenWidget extends StatelessWidget {
  const GuestsScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    late Widget bodyWidget;

    return BlocProvider(
      create: (context) =>
          injector<GuestsBloc>()..add(const GetAllGuestsEvent()),
      child: Scaffold(
        appBar: const MainAppBarWidget(title: AppStrings.guests),
        floatingActionButton: CustomFloatingActionButton(
          onPressed: () {
            final guestModalBottomSheet = GuestModalBottomSheet(
              context: context,
              onButtonPressed: () {},
            );
            guestModalBottomSheet.show();
          },
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppConstants.mainPaddingWidth,
          ),
          child: BlocBuilder<GuestsBloc, GuestsState>(
            builder: (context, state) {
              state.when(
                initial: () {
                  bodyWidget = const SizedBox();
                },
                loading: () {
                  bodyWidget = const Center(
                      child: CircularProgressIndicator(
                    color: AppColors.green,
                  ));
                },
                loaded: (guests) {
                  bodyWidget = Column(
                    children: [
                      SizedBox(height: AppConstants.mainPaddingHeight),
                      Expanded(
                        child: GuestListWidget(guests: guests),
                      )
                    ],
                  );
                },
              );
              return bodyWidget;
            },
          ),
        ),
      ),
    );
  }
}
