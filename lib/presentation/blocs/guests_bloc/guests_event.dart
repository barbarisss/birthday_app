part of 'guests_bloc.dart';

@freezed
class GuestsEvent with _$GuestsEvent {
  const factory GuestsEvent.getAllGuests(String sortType) = GetAllGuestsEvent;
  const factory GuestsEvent.allGuest(GuestModel guestModel) = AddGuestEvent;
}
