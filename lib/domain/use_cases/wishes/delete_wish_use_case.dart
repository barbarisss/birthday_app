import 'package:birthday_app/domain/repositories/wishes_repository.dart';

class DeleteWishUseCase {
  DeleteWishUseCase({required this.wishesRepository});

  final WishesRepository wishesRepository;

  Future<bool> call(String id) async {
    return await wishesRepository.deleteWish(id);
  }
}
