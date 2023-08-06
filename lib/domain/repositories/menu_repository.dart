import 'package:birthday_app/data/models/menu_item/menu_item_model.dart';

abstract class MenuRepository {
  Future<List<MenuItemModel>> getAllMenuItems();
}