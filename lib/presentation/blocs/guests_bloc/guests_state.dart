part of 'guests_bloc.dart';

@freezed
class GuestsState with _$GuestsState {
  const factory GuestsState.initial() = _InitialGuestsState;
  const factory GuestsState.loading() = _LoadingGuestsState;
  const factory GuestsState.loaded(List<GuestModel> guests) =
      _LoadedGuestsState;
}
