part of 'menu_bloc.dart';

@freezed
class MenuState with _$MenuState {
  const factory MenuState.initial() = _InitialMenuState;
  const factory MenuState.loading() = _LoadingMenuState;
  const factory MenuState.loaded(List<MenuItemModel> guests) = _LoadedMenuState;
}
