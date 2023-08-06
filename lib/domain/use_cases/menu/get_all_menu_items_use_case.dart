import 'package:birthday_app/data/models/menu_item/menu_item_model.dart';
import 'package:birthday_app/domain/repositories/menu_repository.dart';

class GetAllMenuItemsUseCase {
  GetAllMenuItemsUseCase({required this.menuRepository});

  final MenuRepository menuRepository;

  Future<List<MenuItemModel>> call() async {
    return await menuRepository.getAllMenuItems();
  }
}
