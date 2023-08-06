import 'package:birthday_app/domain/repositories/wishes_repository.dart';

class SelectWishUseCase {
  SelectWishUseCase({required this.wishesRepository});

  final WishesRepository wishesRepository;

  Future<bool> call(String id) async {
    return await wishesRepository.selectWish(id);
  }
}
