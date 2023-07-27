import 'package:birthday_app/data/models/guest/guest_model.dart';

abstract class GuestsLocalDataSource {
  Future<bool> initDb();
  Future<List<GuestModel>> getAllGuests();
  Future<bool> addGuest(GuestModel guestModel);
  Future<bool> deleteGuest(int index);
}
