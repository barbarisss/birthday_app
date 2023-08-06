import 'package:birthday_app/data/models/wish/wish_model.dart';

abstract class WishesRepository {
  Future<List<WishModel>> getAllWishes();
  Future<bool> addWish(WishModel wishModel);
  Future<bool> selectWish(WishModel wishModel);
  Future<bool> deleteWish(String id);
}
