import 'package:birthday_app/data/models/entertainment_item/entertainment_item_model.dart';

abstract class EntertainmentRepository {
  Future<List<EntertainmentItemModel>> getAllEntertaimentItems();
}
