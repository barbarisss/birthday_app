import 'package:birthday_app/data/models/model.dart';

abstract class LocalDataSource {
  Future<bool> initDb();
  Future<List<Model>> getAllItems();
  Future<bool> addItem(Model item);
  Future<bool> deleteItem(int index);
}
