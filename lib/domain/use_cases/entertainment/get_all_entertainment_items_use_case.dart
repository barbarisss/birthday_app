import 'package:birthday_app/data/models/entertainment_item/entertainment_item_model.dart';
import 'package:birthday_app/domain/repositories/entertainment_repository.dart';

class GetAllEntertainmentItemsUseCase {
  GetAllEntertainmentItemsUseCase({required this.entertainmentRepository});

  final EntertainmentRepository entertainmentRepository;

  Future<List<EntertainmentItemModel>> call() async {
    return await entertainmentRepository.getAllEntertaimentItems();
  }
}
