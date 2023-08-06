import 'package:birthday_app/data/models/wish/wish_model.dart';
import 'package:birthday_app/domain/repositories/wishes_repository.dart';

class SelectWishUseCase {
  SelectWishUseCase({required this.wishesRepository});

  final WishesRepository wishesRepository;

  Future<bool> call(WishModel wishModel) async {
    return await wishesRepository.selectWish(wishModel);
  }
}
