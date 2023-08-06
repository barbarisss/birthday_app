part of 'entertainment_bloc.dart';

@freezed
class EntertainmentState with _$EntertainmentState {
  const factory EntertainmentState.initial() = _InitialEntertainmentState;
  const factory EntertainmentState.loading() = _LoadingEntertainmentState;
  const factory EntertainmentState.loaded(
      List<EntertainmentItemModel> menuItems) = _LoadedEntertainmentState;
}
