import 'package:birthday_app/data/models/guest/guest_model.dart';
import 'package:birthday_app/data/models/model.dart';

abstract class LocalDataSource {
  Future<bool> initDb();
  Future<List<Model>> getAllItems();
  Future<bool> addItem(Model itemModel);
  Future<bool> deleteItem(int index);
}
