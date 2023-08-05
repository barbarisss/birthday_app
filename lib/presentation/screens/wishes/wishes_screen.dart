import 'package:birthday_app/core/utils/strings.dart';
import 'package:birthday_app/presentation/shared_widgets/custom_floating_action_button.dart';
import 'package:birthday_app/presentation/shared_widgets/custom_text_field.dart';
import 'package:birthday_app/presentation/shared_widgets/main_app_bar.dart';
import 'package:birthday_app/presentation/shared_widgets/modal_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WishesScreenWidget extends StatelessWidget {
  const WishesScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    final formKey = GlobalKey<FormState>();
    final TextEditingController titleController = TextEditingController();
    final TextEditingController linkController = TextEditingController();

    void cleanControllers() {
      titleController.clear();
      linkController.clear();
    }

    return Scaffold(
      appBar: const MainAppBarWidget(title: AppStrings.guests),
      floatingActionButton: CustomFloatingActionButton(
        onPressed: () {
          final modalBottomSheet = ModalBottomSheet(
            context: context,
            onButtonPressed: () {},
            buttomTitle: AppStrings.signUp,
            content: Form(
              key: formKey,
              child: Column(children: [
                CustomTextField(
                  controller: titleController,
                  labelText: AppStrings.name,
                  validator: (value) => textValidator(value),
                ),
                SizedBox(height: 12.h),
                CustomTextField(
                  controller: linkController,
                  labelText: AppStrings.surname,
                  validator: (value) => textValidator(value),
                ),
              ]),
            ),
          );

          modalBottomSheet.show();
        },
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
}
