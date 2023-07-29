import 'package:birthday_app/data/models/guest/guest_model.dart';
import 'package:birthday_app/domain/repositories/guests_repository.dart';

class AddGuestUseCase {
  AddGuestUseCase({required this.guestRepository});

  final GuestsRepository guestRepository;

  Future<bool> call(GuestModel guestModel) async {
    return await guestRepository.addGuest(guestModel);
  }
}
