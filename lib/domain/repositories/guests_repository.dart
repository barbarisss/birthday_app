import 'package:birthday_app/data/models/guest/guest_model.dart';

abstract class GuestsRepository {
  Future<List<GuestModel>> getAllGuests();
  Future<bool> addGuest(GuestModel guestModel);
  Future<bool> deleteGuest(String id);
}
