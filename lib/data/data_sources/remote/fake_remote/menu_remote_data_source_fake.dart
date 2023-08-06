import 'package:birthday_app/core/utils/images.dart';
import 'package:birthday_app/core/utils/strings.dart';
import 'package:birthday_app/data/data_sources/remote/menu_remote_data_source.dart';
import 'package:birthday_app/data/models/menu_item/menu_item_model.dart';

class MenuRemoteDataSourceFake implements MenuRemoteDataSource {
  List<MenuItemModel> menuItems = [
    MenuItemModel(
      image: AppImages.canapes,
      title: AppStrings.canapes,
      ingredients: ['Хлеб', 'Ветчина', 'Салат', 'Яйцо'],
    ),
    MenuItemModel(
      image: AppImages.cheesePlate,
      title: AppStrings.cheesePlate,
      ingredients: ['Сыры', 'Виноград', 'Орехи', 'Соус'],
    ),
    MenuItemModel(
      image: AppImages.shashlik,
      title: AppStrings.shashlik,
      ingredients: ['Свинина', 'Лук', 'Помидоры', 'Кетчуп'],
    ),
    MenuItemModel(
      image: AppImages.seafood,
      title: AppStrings.seafood,
      ingredients: ['Лобстеры', 'Мидии', 'Креветки', 'Устрицы'],
    ),
    MenuItemModel(
      image: AppImages.fruits,
      title: AppStrings.fruits,
      ingredients: ['Арбузик', 'Ананасик', 'Бананы', 'Киви'],
    ),
    MenuItemModel(
      image: AppImages.limonades,
      title: AppStrings.limonades,
      ingredients: ['Оранжевый', 'Белый', 'Зеленый', 'Красный'],
    ),
  ];

  @override
  Future<List<MenuItemModel>> getAllMenuItems() async {
    final fetchMenuItems = await Future.delayed(
      const Duration(milliseconds: 1500),
      () => menuItems,
    );
    return fetchMenuItems;
  }
}
