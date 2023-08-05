import 'package:birthday_app/data/data_sources/local/guests_local_data_source.dart';
import 'package:birthday_app/data/models/guest/guest_model.dart';
import 'package:birthday_app/domain/repositories/guests_repository.dart';

class GuestsRepositoryImpl implements GuestsRepository {
  const GuestsRepositoryImpl({required this.guestsLocalDataSource});

  final GuestsLocalDataSource guestsLocalDataSource;

  @override
  Future<List<GuestModel>> getAllGuests() async {
    final response = await guestsLocalDataSource.getAllGuests();
    return response;
  }

  @override
  Future<bool> addGuest(GuestModel guestModel) async {
    final response = await guestsLocalDataSource.addGuest(guestModel);
    return response;
  }

  @override
  Future<bool> deleteGuest(String id) async {
    final response = await guestsLocalDataSource.deleteGuest(id);
    return response;
  }
}
