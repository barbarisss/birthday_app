import 'package:auto_route/auto_route.dart';
import 'package:birthday_app/app/di/injector.dart';
import 'package:birthday_app/core/utils/colors.dart';
import 'package:birthday_app/core/utils/constants.dart';
import 'package:birthday_app/core/utils/icons.dart';
import 'package:birthday_app/core/utils/images.dart';
import 'package:birthday_app/core/utils/strings.dart';
import 'package:birthday_app/data/models/guest/guest_model.dart';
import 'package:birthday_app/presentation/blocs/guests_bloc/guests_bloc.dart';
import 'package:birthday_app/presentation/screens/guests/widgets/date_text_input_formatter.dart';
import 'package:birthday_app/presentation/screens/guests/widgets/guest_list.dart';
import 'package:birthday_app/presentation/shared_widgets/custom_floating_action_button.dart';
import 'package:birthday_app/presentation/shared_widgets/custom_text_field.dart';
import 'package:birthday_app/presentation/shared_widgets/main_app_bar.dart';
import 'package:birthday_app/presentation/shared_widgets/modal_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class GuestsScreenWidget extends StatelessWidget {
  const GuestsScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    late Widget bodyWidget;

    final TextEditingController nameController = TextEditingController();
    final TextEditingController surnameController = TextEditingController();
    final TextEditingController birthDateController = TextEditingController();
    final TextEditingController phoneController = TextEditingController();
    final TextEditingController professionController = TextEditingController();

    void cleanControllers() {
      nameController.clear();
      surnameController.clear();
      birthDateController.clear();
      phoneController.clear();
      professionController.clear();
    }

    return BlocProvider(
      create: (context) =>
          injector<GuestsBloc>()..add(const GetAllGuestsEvent()),
      child: Scaffold(
        appBar: const MainAppBarWidget(title: AppStrings.guests),
        floatingActionButton: BlocConsumer<GuestsBloc, GuestsState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            return CustomFloatingActionButton(
              onPressed: () {
                final modalBottomSheet = ModalBottomSheet(
                  context: context,
                  onButtonPressed: () {
                    context.read<GuestsBloc>().add(
                          AddGuestEvent(
                            GuestModel(
                              avatar: AppImages.avatar,
                              name: nameController.text,
                              surname: surnameController.text,
                              birthDate: DateTime.now(),
                              phoneNumber: phoneController.text,
                              profession: professionController.text,
                            ),
                          ),
                        );

                    AutoRouter.of(context).pop();
                    context.read<GuestsBloc>().add(const GetAllGuestsEvent());
                    cleanControllers();
                  },
                  buttomTitle: AppStrings.signUp,
                  content: Column(children: [
                    CustomTextField(
                      controller: nameController,
                      labelText: AppStrings.name,
                    ),
                    SizedBox(height: 12.h),
                    CustomTextField(
                      controller: surnameController,
                      labelText: AppStrings.surname,
                    ),
                    SizedBox(height: 12.h),
                    CustomTextField(
                      controller: birthDateController,
                      inputFormatters: [
                        DateTextInputFormatter(
                          sample: 'XX-XX-XXXX',
                          separator: '-',
                        ),
                      ],
                      hintText: 'ДД-ММ-ГГГГ',
                      labelText: AppStrings.birthDate,
                      suffixIcon: AppIcons.calendar,
                      inputNumber: true,
                    ),
                    SizedBox(height: 12.h),
                    CustomTextField(
                      controller: phoneController,
                      inputFormatters: [
                        DateTextInputFormatter(
                          sample: 'XX-XX-XXXX',
                          separator: '-',
                        ),
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                      ],
                      labelText: AppStrings.phone,
                      inputNumber: true,
                    ),
                    SizedBox(height: 12.h),
                    CustomTextField(
                      controller: professionController,
                      labelText: AppStrings.profession,
                    ),
                  ]),
                );

                modalBottomSheet.show();
              },
            );
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
