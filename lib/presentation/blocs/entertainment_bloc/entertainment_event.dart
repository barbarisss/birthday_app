part of 'entertainment_bloc.dart';

@freezed
class EntertainmentEvent with _$EntertainmentEvent {
  const factory EntertainmentEvent.getAllEntertainmentItems() =
      GetAllEntertainmentItemsEvent;
}
