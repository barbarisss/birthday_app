import 'package:birthday_app/data/models/wish/wish_model.dart';
import 'package:birthday_app/domain/repositories/wishes_repository.dart';

class GetAllWishesUseCase {
  GetAllWishesUseCase({required this.wishesRepository});

  final WishesRepository wishesRepository;

  Future<List<WishModel>> call() async {
    return await wishesRepository.getAllWishes();
  }
}
