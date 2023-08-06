import 'package:birthday_app/data/models/menu_item/menu_item_model.dart';

abstract class MenuRemoteDataSource {
  Future<List<MenuItemModel>> getAllMenuItems();
}
