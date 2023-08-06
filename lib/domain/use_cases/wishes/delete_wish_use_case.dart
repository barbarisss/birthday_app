import 'package:birthday_app/domain/repositories/wishes_repository.dart';

class DeleteWishUseCase {
  DeleteWishUseCase({required this.wishesRepository});

  final WishesRepository wishesRepository;

  Future<bool> call(int index) async {
    return await wishesRepository.deleteWish(index);
  }
}
