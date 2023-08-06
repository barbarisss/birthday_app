import 'package:birthday_app/data/data_sources/local/guests_local_data_source.dart';
import 'package:birthday_app/data/data_sources/local/hive/guests_hive/guest.dart';
import 'package:birthday_app/data/data_sources/local/hive/wishes_hive/wish.dart';
import 'package:birthday_app/data/data_sources/local/wishes_local_data_sources.dart';
import 'package:birthday_app/data/models/guest/guest_model.dart';
import 'package:birthday_app/data/models/wish/wish_model.dart';
import 'package:flutter/foundation.dart' as foundation;
import 'package:path_provider/path_provider.dart';
import 'package:hive/hive.dart';

class WishesLocalDataSourceHive implements WishesLocalDataSource {
  final _kWishesBoxName = 'WishesBox';

  @override
  Future<bool> initDb() async {
    if (!foundation.kIsWeb) {
      final appDocumentDir = await getApplicationDocumentsDirectory();
      Hive.init(appDocumentDir.path);
    }
    Hive.registerAdapter(WishAdapter());
    await Hive.openBox<Wish>(_kWishesBoxName);
    return true;
  }

  @override
  Future<List<WishModel>> getAllWishes() async {
    final guestsBox = Hive.box<Wish>(_kWishesBoxName);
    final result = guestsBox.values
        .map(
          (wish) => WishModel(
            id: wish.id,
            title: wish.title,
            link: wish.link,
            isSelected: wish.isSelected,
          ),
        )
        .toList();
    return result;
  }

  @override
  Future<bool> addWish(WishModel wishModel) async {
    final guestsBox = Hive.box<Wish>(_kWishesBoxName);

    final convertedWish = Wish(
      id: wishModel.id,
      title: wishModel.title,
      link: wishModel.link,
      isSelected: wishModel.isSelected,
    );

    await guestsBox.put(convertedWish.id, convertedWish);
    return true;
  }

  @override
  Future<bool> selectWish(WishModel wishModel) async {
    final guestsBox = Hive.box<Wish>(_kWishesBoxName);
    final convertedWish = Wish(
      id: wishModel.id,
      title: wishModel.title,
      link: wishModel.link,
      isSelected: !wishModel.isSelected,
    );
    await guestsBox.put(convertedWish.id, convertedWish);
    return true;
  }

  @override
  Future<bool> deleteWish(String id) async {
    final guestsBox = Hive.box<Wish>(_kWishesBoxName);
    await guestsBox.delete(id);
    return true;
  }
}
