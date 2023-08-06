part of 'menu_bloc.dart';

@freezed
class MenuEvent with _$MenuEvent {
  const factory MenuEvent.getAllMenuItems() = GetAllMenuItemsEvent;
}
