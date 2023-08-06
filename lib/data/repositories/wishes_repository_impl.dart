import 'package:birthday_app/data/data_sources/local/wishes_local_data_sources.dart';
import 'package:birthday_app/data/models/wish/wish_model.dart';
import 'package:birthday_app/domain/repositories/wishes_repository.dart';

class WishesRepositoryImpl implements WishesRepository {
  const WishesRepositoryImpl({required this.wishesLocalDataSource});

  final WishesLocalDataSource wishesLocalDataSource;

  @override
  Future<List<WishModel>> getAllWishes() async {
    final response = await wishesLocalDataSource.getAllWishes();
    return response;
  }

  @override
  Future<bool> addWish(WishModel wishModel) async {
    final response = await wishesLocalDataSource.addWish(wishModel);
    return response;
  }

  @override
  Future<bool> selectWish(WishModel wishModel, int index) async {
    final response = await wishesLocalDataSource.selectWish(wishModel, index);
    return response;
  }

  @override
  Future<bool> deleteWish(int index) async {
    final response = await wishesLocalDataSource.deleteWish(index);
    return response;
  }
}
