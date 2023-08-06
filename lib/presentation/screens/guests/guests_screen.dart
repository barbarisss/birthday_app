import 'package:auto_route/auto_route.dart';
import 'package:birthday_app/app/di/injector.dart';
import 'package:birthday_app/core/utils/colors.dart';
import 'package:birthday_app/core/utils/constants.dart';
import 'package:birthday_app/core/utils/images.dart';
import 'package:birthday_app/core/utils/strings.dart';
import 'package:birthday_app/data/models/guest/guest_model.dart';
import 'package:birthday_app/presentation/blocs/guests_bloc/guests_bloc.dart';
import 'package:birthday_app/presentation/screens/guests/widgets/guest_card.dart';
import 'package:birthday_app/presentation/screens/guests/widgets/guest_modal_bottom_sheet.dart';
import 'package:birthday_app/presentation/screens/guests/widgets/info_section.dart';
import 'package:birthday_app/presentation/shared_widgets/custom_floating_action_button.dart';
import 'package:birthday_app/presentation/shared_widgets/main_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

@RoutePage()
class GuestsScreenWidget extends StatelessWidget {
  const GuestsScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    late Widget bodyWidget;

    final sorts = [
      AppStrings.sortAddDate,
      AppStrings.sortName,
      AppStrings.sortSurname,
      AppStrings.sortAge,
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

    void fillControllers(GuestModel guestModel) {
      nameController.text = guestModel.name;
      surnameController.text = guestModel.surname;
      birthDateController.text =
          DateFormat(AppStrings.datePattern).format(guestModel.birthDate);
      phoneController.text = guestModel.phoneNumber;
      professionController.text = guestModel.profession;
    }

    return BlocProvider(
      create: (context) => injector<GuestsBloc>()
        ..add(const GetAllGuestsEvent(AppStrings.sortAddDate)),
      child: Scaffold(
        appBar: const MainAppBarWidget(title: AppStrings.guests),
        floatingActionButton: BlocBuilder<GuestsBloc, GuestsState>(
          builder: (context, state) => CustomFloatingActionButton(
            onPressed: () {
              final guestModalBottomSheet = GuestModalBottomSheet(
                context: context,
                onButtonPressed: () {
                  if (formKey.currentState!.validate()) {
                    context.read<GuestsBloc>().add(
                          AddGuestEvent(
                            GuestModel(
                              id: const Uuid().v4(),
                              additionDate: DateTime.now(),
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
                  }
                },
                onWillPop: () async {
                  cleanControllers();
                  return true;
                },
                formKey: formKey,
                nameController: nameController,
                surnameController: surnameController,
                birthDateController: birthDateController,
                phoneController: phoneController,
                professionController: professionController,
              );

              guestModalBottomSheet.show();
            },
          ),
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
                      TopSectionWidget(
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
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Dismissible(
                                  key: ObjectKey(guests[index]),
                                  onDismissed: (direction) {
                                    context.read<GuestsBloc>().add(
                                        DeleteGuestEvent(guests[index].id));
                                  },
                                  child: GuestCardWidget(
                                    onDoubleTap: () {
                                      fillControllers(guests[index]);

                                      final guestModalBottomSheet =
                                          GuestModalBottomSheet(
                                        context: context,
                                        onButtonPressed: () {
                                          if (formKey.currentState!
                                              .validate()) {
                                            context.read<GuestsBloc>().add(
                                                  AddGuestEvent(
                                                    guests[index].copyWith(
                                                      name: nameController.text,
                                                      surname: surnameController
                                                          .text,
                                                      birthDate: parse(
                                                          birthDateController
                                                              .text),
                                                      phoneNumber:
                                                          phoneController.text,
                                                      profession:
                                                          professionController
                                                              .text,
                                                    ),
                                                  ),
                                                );

                                            AutoRouter.of(context).pop();
                                          }
                                        },
                                        onWillPop: () async {
                                          cleanControllers();
                                          return true;
                                        },
                                        formKey: formKey,
                                        nameController: nameController,
                                        surnameController: surnameController,
                                        birthDateController:
                                            birthDateController,
                                        phoneController: phoneController,
                                        professionController:
                                            professionController,
                                      );

                                      guestModalBottomSheet.show();
                                    },
                                    guest: guests[index],
                                  ),
                                ),
                                SizedBox(
                                    height: AppConstants.mainPaddingHeight),
                              ],
                            );
                          },
                          itemCount: guests.length,
                          physics: const BouncingScrollPhysics(),
                        ),
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

  DateTime parse(String str) {
    String pattern = AppStrings.datePattern;
    return DateFormat(pattern).parse(str);
  }
}
