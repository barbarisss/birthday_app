part of 'guests_bloc.dart';

@freezed
class GuestsEvent with _$GuestsEvent {
  const factory GuestsEvent.getAllGuests() = GetAllGuestsEvent;
  const factory GuestsEvent.allGuest(GuestModel guestModel) = AddGuestEvent;
}
