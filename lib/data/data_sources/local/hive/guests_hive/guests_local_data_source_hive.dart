import 'package:birthday_app/data/data_sources/local/hive/guests_hive/guest.dart';
import 'package:birthday_app/data/data_sources/local/local_data_source.dart';
import 'package:birthday_app/data/models/guest/guest_model.dart';
import 'package:flutter/foundation.dart' as foundation;
import 'package:path_provider/path_provider.dart';
import 'package:birthday_app/data/models/model.dart';
import 'package:hive/hive.dart';

class GuestsLocalDataSourceHive implements LocalDataSource {
  final _kGuestsBoxName = 'GuestsBox';

  @override
  Future<bool> initDb() async {
    if (!foundation.kIsWeb) {
      final appDocumentDir = await getApplicationDocumentsDirectory();
      Hive.init(appDocumentDir.path);
    }
    Hive.registerAdapter(GuestAdapter());
    await Hive.openBox<Guest>(_kGuestsBoxName);
    return true;
  }

  @override
  Future<List<Model>> getAllItems() async {
    final guestsBox = Hive.box<Guest>(_kGuestsBoxName);
    final result = guestsBox.values
        .map(
          (guest) => GuestModel(
              id: guest.id,
              avatar: guest.avatar,
              name: guest.name,
              surname: guest.surname,
              birthDate: guest.birthDate,
              phoneNumber: guest.phoneNumber,
              profession: guest.profession),
        )
        .toList();
    return result;
  }

  @override
  Future<bool> addItem(Model itemModel) async {
    final guestModel = itemModel as GuestModel;
    final guestsBox = Hive.box<Guest>(_kGuestsBoxName);

    final convertedGuest = Guest(
      id: guestsBox.isEmpty ? 0 : guestsBox.values.length,
      avatar: guestModel.avatar,
      name: guestModel.name,
      surname: guestModel.surname,
      birthDate: guestModel.birthDate,
      phoneNumber: guestModel.phoneNumber,
      profession: guestModel.profession,
    );

    await guestsBox.add(convertedGuest);
    return true;
  }

  @override
  Future<bool> deleteItem(int index) {
    // TODO: implement deleteItem
    throw UnimplementedError();
  }
}
