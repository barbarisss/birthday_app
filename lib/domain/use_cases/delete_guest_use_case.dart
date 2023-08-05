import 'package:birthday_app/domain/repositories/guests_repository.dart';

class DeleteGuestUseCase {
  DeleteGuestUseCase({required this.guestRepository});

  final GuestsRepository guestRepository;

  Future<bool> call(String id) async {
    return await guestRepository.deleteGuest(id);
  }
}
