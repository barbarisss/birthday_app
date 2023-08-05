import 'package:auto_route/auto_route.dart';
import 'package:birthday_app/app/di/injector.dart';
import 'package:birthday_app/core/utils/colors.dart';
import 'package:birthday_app/core/utils/constants.dart';
import 'package:birthday_app/core/utils/icons.dart';
import 'package:birthday_app/core/utils/images.dart';
import 'package:birthday_app/core/utils/strings.dart';
import 'package:birthday_app/data/models/guest/guest_model.dart';
import 'package:birthday_app/presentation/blocs/guests_bloc/guests_bloc.dart';
import 'package:birthday_app/presentation/screens/guests/widgets/guest_list.dart';
import 'package:birthday_app/presentation/screens/guests/widgets/info_section.dart';
import 'package:birthday_app/presentation/shared_widgets/custom_floating_action_button.dart';
import 'package:birthday_app/presentation/shared_widgets/custom_text_field.dart';
import 'package:birthday_app/presentation/shared_widgets/main_app_bar.dart';
import 'package:birthday_app/presentation/shared_widgets/modal_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_holo_date_picker/flutter_holo_date_picker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

@RoutePage()
class GuestsScreenWidget extends StatelessWidget {
  const GuestsScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    late Widget bodyWidget;

    final sorts = [
      AppStrings.sortWithout,
      AppStrings.sortName,
    ];

    final formKey = GlobalKey<FormState>();
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
      create: (context) => injector<GuestsBloc>()
        ..add(const GetAllGuestsEvent(AppStrings.sortWithout)),
      child: Scaffold(
        appBar: const MainAppBarWidget(title: AppStrings.guests),
        floatingActionButton: BlocBuilder<GuestsBloc, GuestsState>(
          builder: (context, state) {
            return CustomFloatingActionButton(
              onPressed: () {
                final modalBottomSheet = ModalBottomSheet(
                  context: context,
                  onButtonPressed: () {
                    if (formKey.currentState!.validate()) {
                      context.read<GuestsBloc>().add(
                            AddGuestEvent(
                              GuestModel(
                                avatar: AppImages.avatar,
                                name: nameController.text,
                                surname: surnameController.text,
                                birthDate: parse(birthDateController.text),
                                phoneNumber: phoneController.text,
                                profession: professionController.text,
                              ),
                            ),
                          );

                      AutoRouter.of(context).pop();
                      context
                          .read<GuestsBloc>()
                          .add(const GetAllGuestsEvent(AppStrings.sortWithout));
                      cleanControllers();
                    }
                  },
                  buttomTitle: AppStrings.signUp,
                  content: Form(
                    key: formKey,
                    child: Column(children: [
                      CustomTextField(
                        controller: nameController,
                        labelText: AppStrings.name,
                        validator: (value) => textValidator(value),
                      ),
                      SizedBox(height: 12.h),
                      CustomTextField(
                        controller: surnameController,
                        labelText: AppStrings.surname,
                        validator: (value) => textValidator(value),
                      ),
                      SizedBox(height: 12.h),
                      CustomTextField(
                        controller: birthDateController,
                        labelText: AppStrings.birthDate,
                        suffixIcon: AppIcons.calendar,
                        inputNumber: true,
                        onTap: () async {
                          final pickedDate =
                              await DatePicker.showSimpleDatePicker(
                            context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1962),
                            lastDate: DateTime.now(),
                            dateFormat: "dd-MMMM-yyyy",
                            locale: DateTimePickerLocale.ru,
                            titleText: AppStrings.choseDate,
                            looping: true,
                          );
                          if (pickedDate != null) {
                            birthDateController.text = format(pickedDate);
                          }
                        },
                        validator: (value) => textValidator(value),
                      ),
                      SizedBox(height: 12.h),
                      CustomTextField(
                        controller: phoneController,
                        labelText: AppStrings.phone,
                        inputNumber: true,
                      ),
                      SizedBox(height: 12.h),
                      CustomTextField(
                        controller: professionController,
                        labelText: AppStrings.profession,
                        validator: (value) => textValidator(value),
                      ),
                    ]),
                  ),
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
                loaded: (guests, sortType) {
                  bodyWidget = Column(
                    children: [
                      SizedBox(height: AppConstants.mainPaddingHeight),
                      InfoSectionWidget(
                        guestsLenght: guests.length,
                        popupMenuItems: sorts
                            .map(
                              (sort) => PopupMenuItem<String>(
                                child: Text(sort),
                                onTap: () {
                                  context.read<GuestsBloc>().add(
                                        GetAllGuestsEvent(sort),
                                      );
                                },
                              ),
                            )
                            .toList(),
                        currentSortType: sortType,
                        textStyle: textTheme.bodyMedium,
                      ),
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

  String? textValidator(dynamic val) {
    if (val.toString().isEmpty) {
      return '*Обязательное поле для заполнения';
    } else {
      return null;
    }
  }

  String format(DateTime date) {
    String pattern = 'dd.MM.yyyy';
    return DateFormat(pattern).format(date);
  }

  DateTime parse(String str) {
    String pattern = 'dd.MM.yyyy';
    return DateFormat(pattern).parse(str);
  }
}

String getNoun(int number, String one, String two, String five) {
  number %= 100;
  if (number >= 5 && number <= 20) {
    return five;
  }
  number %= 10;
  if (number == 1) {
    return one;
  }
  if (number >= 2 && number <= 4) {
    return two;
  }
  return five;
}
