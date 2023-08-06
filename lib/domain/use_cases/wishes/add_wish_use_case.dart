import 'package:birthday_app/data/models/wish/wish_model.dart';
import 'package:birthday_app/domain/repositories/wishes_repository.dart';

class AddWishUseCase {
  AddWishUseCase({
    required this.wishesRepository,
  });

  final WishesRepository wishesRepository;

  Future<bool> call(WishModel wishModel) async {
    return await wishesRepository.addWish(wishModel);
  }
}
