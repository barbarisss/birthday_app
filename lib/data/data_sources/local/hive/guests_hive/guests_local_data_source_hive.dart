import 'package:birthday_app/data/data_sources/local/guests_local_data_source.dart';
import 'package:birthday_app/data/data_sources/local/hive/guests_hive/guest.dart';
import 'package:birthday_app/data/models/guest/guest_model.dart';
import 'package:flutter/foundation.dart' as foundation;
import 'package:path_provider/path_provider.dart';
import 'package:hive/hive.dart';

class GuestsLocalDataSourceHive implements GuestsLocalDataSource {
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
  Future<List<GuestModel>> getAllGuests() async {
    final guestsBox = Hive.box<Guest>(_kGuestsBoxName);
    // final List<GuestModel> resultList = [];

    // guestsBox.toMap().forEach(
    //   (key, guest) {
    //     final guestModel = GuestModel(
    //         id: guest.id,
    //         additionDate: guest.additionDate,
    //         avatar: guest.avatar,
    //         name: guest.name,
    //         surname: guest.surname,
    //         birthDate: guest.birthDate,
    //         phoneNumber: guest.phoneNumber,
    //         profession: guest.profession);

    //     resultList.add(guestModel);
    //   },
    // );

    final result = guestsBox.values
        .map(
          (guest) => GuestModel(
              id: guest.id,
              additionDate: guest.additionDate,
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
  Future<bool> addGuest(GuestModel guestModel) async {
    final guestsBox = Hive.box<Guest>(_kGuestsBoxName);

    final convertedGuest = Guest(
      id: guestModel.id,
      additionDate: guestModel.additionDate,
      avatar: guestModel.avatar,
      name: guestModel.name,
      surname: guestModel.surname,
      birthDate: guestModel.birthDate,
      phoneNumber: guestModel.phoneNumber,
      profession: guestModel.profession,
    );

    await guestsBox.put(convertedGuest.id, convertedGuest);
    return true;
  }

  @override
  Future<bool> deleteGuest(String id) async {
    final guestsBox = Hive.box<Guest>(_kGuestsBoxName);
    await guestsBox.delete(id);
    return true;
  }
}
