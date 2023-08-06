// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'menu_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MenuEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllMenuItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllMenuItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllMenuItems,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllMenuItemsEvent value) getAllMenuItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllMenuItemsEvent value)? getAllMenuItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllMenuItemsEvent value)? getAllMenuItems,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuEventCopyWith<$Res> {
  factory $MenuEventCopyWith(MenuEvent value, $Res Function(MenuEvent) then) =
      _$MenuEventCopyWithImpl<$Res, MenuEvent>;
}

/// @nodoc
class _$MenuEventCopyWithImpl<$Res, $Val extends MenuEvent>
    implements $MenuEventCopyWith<$Res> {
  _$MenuEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetAllMenuItemsEventCopyWith<$Res> {
  factory _$$GetAllMenuItemsEventCopyWith(_$GetAllMenuItemsEvent value,
          $Res Function(_$GetAllMenuItemsEvent) then) =
      __$$GetAllMenuItemsEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllMenuItemsEventCopyWithImpl<$Res>
    extends _$MenuEventCopyWithImpl<$Res, _$GetAllMenuItemsEvent>
    implements _$$GetAllMenuItemsEventCopyWith<$Res> {
  __$$GetAllMenuItemsEventCopyWithImpl(_$GetAllMenuItemsEvent _value,
      $Res Function(_$GetAllMenuItemsEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAllMenuItemsEvent implements GetAllMenuItemsEvent {
  const _$GetAllMenuItemsEvent();

  @override
  String toString() {
    return 'MenuEvent.getAllMenuItems()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllMenuItemsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllMenuItems,
  }) {
    return getAllMenuItems();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllMenuItems,
  }) {
    return getAllMenuItems?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllMenuItems,
    required TResult orElse(),
  }) {
    if (getAllMenuItems != null) {
      return getAllMenuItems();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllMenuItemsEvent value) getAllMenuItems,
  }) {
    return getAllMenuItems(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllMenuItemsEvent value)? getAllMenuItems,
  }) {
    return getAllMenuItems?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllMenuItemsEvent value)? getAllMenuItems,
    required TResult orElse(),
  }) {
    if (getAllMenuItems != null) {
      return getAllMenuItems(this);
    }
    return orElse();
  }
}

abstract class GetAllMenuItemsEvent implements MenuEvent {
  const factory GetAllMenuItemsEvent() = _$GetAllMenuItemsEvent;
}

/// @nodoc
mixin _$MenuState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<MenuItemModel> menuItems) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<MenuItemModel> menuItems)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MenuItemModel> menuItems)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialMenuState value) initial,
    required TResult Function(_LoadingMenuState value) loading,
    required TResult Function(_LoadedMenuState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialMenuState value)? initial,
    TResult? Function(_LoadingMenuState value)? loading,
    TResult? Function(_LoadedMenuState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialMenuState value)? initial,
    TResult Function(_LoadingMenuState value)? loading,
    TResult Function(_LoadedMenuState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuStateCopyWith<$Res> {
  factory $MenuStateCopyWith(MenuState value, $Res Function(MenuState) then) =
      _$MenuStateCopyWithImpl<$Res, MenuState>;
}

/// @nodoc
class _$MenuStateCopyWithImpl<$Res, $Val extends MenuState>
    implements $MenuStateCopyWith<$Res> {
  _$MenuStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialMenuStateCopyWith<$Res> {
  factory _$$_InitialMenuStateCopyWith(
          _$_InitialMenuState value, $Res Function(_$_InitialMenuState) then) =
      __$$_InitialMenuStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialMenuStateCopyWithImpl<$Res>
    extends _$MenuStateCopyWithImpl<$Res, _$_InitialMenuState>
    implements _$$_InitialMenuStateCopyWith<$Res> {
  __$$_InitialMenuStateCopyWithImpl(
      _$_InitialMenuState _value, $Res Function(_$_InitialMenuState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InitialMenuState implements _InitialMenuState {
  const _$_InitialMenuState();

  @override
  String toString() {
    return 'MenuState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InitialMenuState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<MenuItemModel> menuItems) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<MenuItemModel> menuItems)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MenuItemModel> menuItems)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialMenuState value) initial,
    required TResult Function(_LoadingMenuState value) loading,
    required TResult Function(_LoadedMenuState value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialMenuState value)? initial,
    TResult? Function(_LoadingMenuState value)? loading,
    TResult? Function(_LoadedMenuState value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialMenuState value)? initial,
    TResult Function(_LoadingMenuState value)? loading,
    TResult Function(_LoadedMenuState value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialMenuState implements MenuState {
  const factory _InitialMenuState() = _$_InitialMenuState;
}

/// @nodoc
abstract class _$$_LoadingMenuStateCopyWith<$Res> {
  factory _$$_LoadingMenuStateCopyWith(
          _$_LoadingMenuState value, $Res Function(_$_LoadingMenuState) then) =
      __$$_LoadingMenuStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingMenuStateCopyWithImpl<$Res>
    extends _$MenuStateCopyWithImpl<$Res, _$_LoadingMenuState>
    implements _$$_LoadingMenuStateCopyWith<$Res> {
  __$$_LoadingMenuStateCopyWithImpl(
      _$_LoadingMenuState _value, $Res Function(_$_LoadingMenuState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadingMenuState implements _LoadingMenuState {
  const _$_LoadingMenuState();

  @override
  String toString() {
    return 'MenuState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadingMenuState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<MenuItemModel> menuItems) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<MenuItemModel> menuItems)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MenuItemModel> menuItems)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialMenuState value) initial,
    required TResult Function(_LoadingMenuState value) loading,
    required TResult Function(_LoadedMenuState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialMenuState value)? initial,
    TResult? Function(_LoadingMenuState value)? loading,
    TResult? Function(_LoadedMenuState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialMenuState value)? initial,
    TResult Function(_LoadingMenuState value)? loading,
    TResult Function(_LoadedMenuState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingMenuState implements MenuState {
  const factory _LoadingMenuState() = _$_LoadingMenuState;
}

/// @nodoc
abstract class _$$_LoadedMenuStateCopyWith<$Res> {
  factory _$$_LoadedMenuStateCopyWith(
          _$_LoadedMenuState value, $Res Function(_$_LoadedMenuState) then) =
      __$$_LoadedMenuStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<MenuItemModel> menuItems});
}

/// @nodoc
class __$$_LoadedMenuStateCopyWithImpl<$Res>
    extends _$MenuStateCopyWithImpl<$Res, _$_LoadedMenuState>
    implements _$$_LoadedMenuStateCopyWith<$Res> {
  __$$_LoadedMenuStateCopyWithImpl(
      _$_LoadedMenuState _value, $Res Function(_$_LoadedMenuState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? menuItems = null,
  }) {
    return _then(_$_LoadedMenuState(
      null == menuItems
          ? _value._menuItems
          : menuItems // ignore: cast_nullable_to_non_nullable
              as List<MenuItemModel>,
    ));
  }
}

/// @nodoc

class _$_LoadedMenuState implements _LoadedMenuState {
  const _$_LoadedMenuState(final List<MenuItemModel> menuItems)
      : _menuItems = menuItems;

  final List<MenuItemModel> _menuItems;
  @override
  List<MenuItemModel> get menuItems {
    if (_menuItems is EqualUnmodifiableListView) return _menuItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_menuItems);
  }

  @override
  String toString() {
    return 'MenuState.loaded(menuItems: $menuItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadedMenuState &&
            const DeepCollectionEquality()
                .equals(other._menuItems, _menuItems));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_menuItems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedMenuStateCopyWith<_$_LoadedMenuState> get copyWith =>
      __$$_LoadedMenuStateCopyWithImpl<_$_LoadedMenuState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<MenuItemModel> menuItems) loaded,
  }) {
    return loaded(menuItems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<MenuItemModel> menuItems)? loaded,
  }) {
    return loaded?.call(menuItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MenuItemModel> menuItems)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(menuItems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialMenuState value) initial,
    required TResult Function(_LoadingMenuState value) loading,
    required TResult Function(_LoadedMenuState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialMenuState value)? initial,
    TResult? Function(_LoadingMenuState value)? loading,
    TResult? Function(_LoadedMenuState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialMenuState value)? initial,
    TResult Function(_LoadingMenuState value)? loading,
    TResult Function(_LoadedMenuState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _LoadedMenuState implements MenuState {
  const factory _LoadedMenuState(final List<MenuItemModel> menuItems) =
      _$_LoadedMenuState;

  List<MenuItemModel> get menuItems;
  @JsonKey(ignore: true)
  _$$_LoadedMenuStateCopyWith<_$_LoadedMenuState> get copyWith =>
      throw _privateConstructorUsedError;
}
