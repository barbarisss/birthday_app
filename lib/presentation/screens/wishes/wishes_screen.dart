import 'package:auto_route/auto_route.dart';
import 'package:birthday_app/app/di/injector.dart';
import 'package:birthday_app/core/utils/colors.dart';
import 'package:birthday_app/core/utils/constants.dart';
import 'package:birthday_app/core/utils/strings.dart';
import 'package:birthday_app/data/models/wish/wish_model.dart';
import 'package:birthday_app/presentation/blocs/wishes_bloc/wishes_bloc.dart';
import 'package:birthday_app/presentation/screens/wishes/widgets/wish_card.dart';
import 'package:birthday_app/presentation/screens/wishes/widgets/wish_modal_bottom_sheet.dart';
import 'package:birthday_app/presentation/shared_widgets/custom_floating_action_button.dart';
import 'package:birthday_app/presentation/shared_widgets/main_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uuid/uuid.dart';

@RoutePage()
class WishesScreenWidget extends StatelessWidget {
  const WishesScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    late Widget bodyWidget;

    final formKey = GlobalKey<FormState>();
    final TextEditingController titleController = TextEditingController();
    final TextEditingController linkController = TextEditingController();

    void cleanControllers() {
      titleController.clear();
      linkController.clear();
    }

    void fillControllers(WishModel wishModel) {
      titleController.text = wishModel.title;
      linkController.text = wishModel.link;
    }

    // final List<WishModel> wishes = [
    //   WishModel(
    //     id: const Uuid().v4(),
    //     title: 'Название1',
    //     link: 'Ссылка1',
    //   ),
    //   WishModel(
    //     id: const Uuid().v4(),
    //     title: 'Название1',
    //     link: 'Ссылка1',
    //   ),
    //   WishModel(
    //     id: const Uuid().v4(),
    //     title: 'Название1',
    //     link: 'Ссылка1',
    //   ),
    // ];

    return BlocProvider(
      create: (context) =>
          injector<WishesBloc>()..add(const GetAllWishesEvent()),
      child: Scaffold(
        appBar: const MainAppBarWidget(title: AppStrings.wishlist),
        floatingActionButton: BlocBuilder<WishesBloc, WishesState>(
          builder: (context, state) => CustomFloatingActionButton(
            onPressed: () {
              final wishModalBottomSheet = WishModalBottomSheet(
                context: context,
                onButtonPressed: () {
                  if (formKey.currentState!.validate()) {
                    context.read<WishesBloc>().add(
                          AddWishEvent(
                            WishModel(
                              id: const Uuid().v4(),
                              title: titleController.text,
                              link: linkController.text,
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
                titleController: titleController,
                linkController: linkController,
              );

              wishModalBottomSheet.show();
            },
          ),
        ),
        body: BlocBuilder<WishesBloc, WishesState>(
          builder: (context, state) {
            state.maybeWhen(
              orElse: () {
                bodyWidget = const Center(
                  child: CircularProgressIndicator(
                    color: AppColors.green,
                  ),
                );
              },
              loaded: (wishes) {
                bodyWidget = ListView.builder(
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Dismissible(
                          key: ObjectKey(wishes[index]),
                          onDismissed: (direction) {},
                          child: WishCardWidget(
                            onDoubleTap: () {
                              fillControllers(wishes[index]);

                              final wishModalBottomSheet = WishModalBottomSheet(
                                context: context,
                                onButtonPressed: () {
                                  if (formKey.currentState!.validate()) {
                                    debugPrint('добавление подарка');
                                    AutoRouter.of(context).pop();
                                  }
                                },
                                onWillPop: () async {
                                  cleanControllers();
                                  return true;
                                },
                                formKey: formKey,
                                titleController: titleController,
                                linkController: linkController,
                              );

                              wishModalBottomSheet.show();
                            },
                            wishModel: wishes[index],
                            textStyle: textTheme.bodyMedium,
                          ),
                        ),
                        SizedBox(height: AppConstants.mainPaddingHeight),
                      ],
                    );
                  },
                  itemCount: wishes.length,
                  physics: const BouncingScrollPhysics(),
                  padding: EdgeInsets.only(
                    top: AppConstants.mainPaddingHeight,
                    left: AppConstants.mainPaddingWidth,
                    right: AppConstants.mainPaddingWidth,
                  ),
                );
              },
            );
            return bodyWidget;
          },
        ),
      ),
    );
  }
}
