import 'package:birthday_app/data/data_sources/remote/menu_remote_data_source.dart';
import 'package:birthday_app/data/models/menu_item/menu_item_model.dart';
import 'package:birthday_app/domain/repositories/menu_repository.dart';

class MenuRepositoryImpl implements MenuRepository {
  const MenuRepositoryImpl({required this.menuRemoteDataSource});

  final MenuRemoteDataSource menuRemoteDataSource;

  @override
  Future<List<MenuItemModel>> getAllMenuItems() async {
    final response = await menuRemoteDataSource.getAllMenuItems();
    return response;
  }
}
