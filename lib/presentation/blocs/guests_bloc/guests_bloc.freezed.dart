// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'guests_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GuestsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String sortType) getAllGuests,
    required TResult Function(GuestModel guestModel) allGuest,
    required TResult Function(String id) deleteGuest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String sortType)? getAllGuests,
    TResult? Function(GuestModel guestModel)? allGuest,
    TResult? Function(String id)? deleteGuest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String sortType)? getAllGuests,
    TResult Function(GuestModel guestModel)? allGuest,
    TResult Function(String id)? deleteGuest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllGuestsEvent value) getAllGuests,
    required TResult Function(AddGuestEvent value) allGuest,
    required TResult Function(DeleteGuestEvent value) deleteGuest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllGuestsEvent value)? getAllGuests,
    TResult? Function(AddGuestEvent value)? allGuest,
    TResult? Function(DeleteGuestEvent value)? deleteGuest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllGuestsEvent value)? getAllGuests,
    TResult Function(AddGuestEvent value)? allGuest,
    TResult Function(DeleteGuestEvent value)? deleteGuest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuestsEventCopyWith<$Res> {
  factory $GuestsEventCopyWith(
          GuestsEvent value, $Res Function(GuestsEvent) then) =
      _$GuestsEventCopyWithImpl<$Res, GuestsEvent>;
}

/// @nodoc
class _$GuestsEventCopyWithImpl<$Res, $Val extends GuestsEvent>
    implements $GuestsEventCopyWith<$Res> {
  _$GuestsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetAllGuestsEventCopyWith<$Res> {
  factory _$$GetAllGuestsEventCopyWith(
          _$GetAllGuestsEvent value, $Res Function(_$GetAllGuestsEvent) then) =
      __$$GetAllGuestsEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String sortType});
}

/// @nodoc
class __$$GetAllGuestsEventCopyWithImpl<$Res>
    extends _$GuestsEventCopyWithImpl<$Res, _$GetAllGuestsEvent>
    implements _$$GetAllGuestsEventCopyWith<$Res> {
  __$$GetAllGuestsEventCopyWithImpl(
      _$GetAllGuestsEvent _value, $Res Function(_$GetAllGuestsEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sortType = null,
  }) {
    return _then(_$GetAllGuestsEvent(
      null == sortType
          ? _value.sortType
          : sortType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetAllGuestsEvent implements GetAllGuestsEvent {
  const _$GetAllGuestsEvent(this.sortType);

  @override
  final String sortType;

  @override
  String toString() {
    return 'GuestsEvent.getAllGuests(sortType: $sortType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllGuestsEvent &&
            (identical(other.sortType, sortType) ||
                other.sortType == sortType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sortType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllGuestsEventCopyWith<_$GetAllGuestsEvent> get copyWith =>
      __$$GetAllGuestsEventCopyWithImpl<_$GetAllGuestsEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String sortType) getAllGuests,
    required TResult Function(GuestModel guestModel) allGuest,
    required TResult Function(String id) deleteGuest,
  }) {
    return getAllGuests(sortType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String sortType)? getAllGuests,
    TResult? Function(GuestModel guestModel)? allGuest,
    TResult? Function(String id)? deleteGuest,
  }) {
    return getAllGuests?.call(sortType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String sortType)? getAllGuests,
    TResult Function(GuestModel guestModel)? allGuest,
    TResult Function(String id)? deleteGuest,
    required TResult orElse(),
  }) {
    if (getAllGuests != null) {
      return getAllGuests(sortType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllGuestsEvent value) getAllGuests,
    required TResult Function(AddGuestEvent value) allGuest,
    required TResult Function(DeleteGuestEvent value) deleteGuest,
  }) {
    return getAllGuests(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllGuestsEvent value)? getAllGuests,
    TResult? Function(AddGuestEvent value)? allGuest,
    TResult? Function(DeleteGuestEvent value)? deleteGuest,
  }) {
    return getAllGuests?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllGuestsEvent value)? getAllGuests,
    TResult Function(AddGuestEvent value)? allGuest,
    TResult Function(DeleteGuestEvent value)? deleteGuest,
    required TResult orElse(),
  }) {
    if (getAllGuests != null) {
      return getAllGuests(this);
    }
    return orElse();
  }
}

abstract class GetAllGuestsEvent implements GuestsEvent {
  const factory GetAllGuestsEvent(final String sortType) = _$GetAllGuestsEvent;

  String get sortType;
  @JsonKey(ignore: true)
  _$$GetAllGuestsEventCopyWith<_$GetAllGuestsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddGuestEventCopyWith<$Res> {
  factory _$$AddGuestEventCopyWith(
          _$AddGuestEvent value, $Res Function(_$AddGuestEvent) then) =
      __$$AddGuestEventCopyWithImpl<$Res>;
  @useResult
  $Res call({GuestModel guestModel});

  $GuestModelCopyWith<$Res> get guestModel;
}

/// @nodoc
class __$$AddGuestEventCopyWithImpl<$Res>
    extends _$GuestsEventCopyWithImpl<$Res, _$AddGuestEvent>
    implements _$$AddGuestEventCopyWith<$Res> {
  __$$AddGuestEventCopyWithImpl(
      _$AddGuestEvent _value, $Res Function(_$AddGuestEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? guestModel = null,
  }) {
    return _then(_$AddGuestEvent(
      null == guestModel
          ? _value.guestModel
          : guestModel // ignore: cast_nullable_to_non_nullable
              as GuestModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $GuestModelCopyWith<$Res> get guestModel {
    return $GuestModelCopyWith<$Res>(_value.guestModel, (value) {
      return _then(_value.copyWith(guestModel: value));
    });
  }
}

/// @nodoc

class _$AddGuestEvent implements AddGuestEvent {
  const _$AddGuestEvent(this.guestModel);

  @override
  final GuestModel guestModel;

  @override
  String toString() {
    return 'GuestsEvent.allGuest(guestModel: $guestModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddGuestEvent &&
            (identical(other.guestModel, guestModel) ||
                other.guestModel == guestModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, guestModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddGuestEventCopyWith<_$AddGuestEvent> get copyWith =>
      __$$AddGuestEventCopyWithImpl<_$AddGuestEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String sortType) getAllGuests,
    required TResult Function(GuestModel guestModel) allGuest,
    required TResult Function(String id) deleteGuest,
  }) {
    return allGuest(guestModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String sortType)? getAllGuests,
    TResult? Function(GuestModel guestModel)? allGuest,
    TResult? Function(String id)? deleteGuest,
  }) {
    return allGuest?.call(guestModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String sortType)? getAllGuests,
    TResult Function(GuestModel guestModel)? allGuest,
    TResult Function(String id)? deleteGuest,
    required TResult orElse(),
  }) {
    if (allGuest != null) {
      return allGuest(guestModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllGuestsEvent value) getAllGuests,
    required TResult Function(AddGuestEvent value) allGuest,
    required TResult Function(DeleteGuestEvent value) deleteGuest,
  }) {
    return allGuest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllGuestsEvent value)? getAllGuests,
    TResult? Function(AddGuestEvent value)? allGuest,
    TResult? Function(DeleteGuestEvent value)? deleteGuest,
  }) {
    return allGuest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllGuestsEvent value)? getAllGuests,
    TResult Function(AddGuestEvent value)? allGuest,
    TResult Function(DeleteGuestEvent value)? deleteGuest,
    required TResult orElse(),
  }) {
    if (allGuest != null) {
      return allGuest(this);
    }
    return orElse();
  }
}

abstract class AddGuestEvent implements GuestsEvent {
  const factory AddGuestEvent(final GuestModel guestModel) = _$AddGuestEvent;

  GuestModel get guestModel;
  @JsonKey(ignore: true)
  _$$AddGuestEventCopyWith<_$AddGuestEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteGuestEventCopyWith<$Res> {
  factory _$$DeleteGuestEventCopyWith(
          _$DeleteGuestEvent value, $Res Function(_$DeleteGuestEvent) then) =
      __$$DeleteGuestEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$DeleteGuestEventCopyWithImpl<$Res>
    extends _$GuestsEventCopyWithImpl<$Res, _$DeleteGuestEvent>
    implements _$$DeleteGuestEventCopyWith<$Res> {
  __$$DeleteGuestEventCopyWithImpl(
      _$DeleteGuestEvent _value, $Res Function(_$DeleteGuestEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteGuestEvent(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteGuestEvent implements DeleteGuestEvent {
  const _$DeleteGuestEvent(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'GuestsEvent.deleteGuest(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteGuestEvent &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteGuestEventCopyWith<_$DeleteGuestEvent> get copyWith =>
      __$$DeleteGuestEventCopyWithImpl<_$DeleteGuestEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String sortType) getAllGuests,
    required TResult Function(GuestModel guestModel) allGuest,
    required TResult Function(String id) deleteGuest,
  }) {
    return deleteGuest(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String sortType)? getAllGuests,
    TResult? Function(GuestModel guestModel)? allGuest,
    TResult? Function(String id)? deleteGuest,
  }) {
    return deleteGuest?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String sortType)? getAllGuests,
    TResult Function(GuestModel guestModel)? allGuest,
    TResult Function(String id)? deleteGuest,
    required TResult orElse(),
  }) {
    if (deleteGuest != null) {
      return deleteGuest(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllGuestsEvent value) getAllGuests,
    required TResult Function(AddGuestEvent value) allGuest,
    required TResult Function(DeleteGuestEvent value) deleteGuest,
  }) {
    return deleteGuest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllGuestsEvent value)? getAllGuests,
    TResult? Function(AddGuestEvent value)? allGuest,
    TResult? Function(DeleteGuestEvent value)? deleteGuest,
  }) {
    return deleteGuest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllGuestsEvent value)? getAllGuests,
    TResult Function(AddGuestEvent value)? allGuest,
    TResult Function(DeleteGuestEvent value)? deleteGuest,
    required TResult orElse(),
  }) {
    if (deleteGuest != null) {
      return deleteGuest(this);
    }
    return orElse();
  }
}

abstract class DeleteGuestEvent implements GuestsEvent {
  const factory DeleteGuestEvent(final String id) = _$DeleteGuestEvent;

  String get id;
  @JsonKey(ignore: true)
  _$$DeleteGuestEventCopyWith<_$DeleteGuestEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GuestsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<GuestModel> guests, String currentSortType)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<GuestModel> guests, String currentSortType)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<GuestModel> guests, String currentSortType)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialGuestsState value) initial,
    required TResult Function(_LoadingGuestsState value) loading,
    required TResult Function(_LoadedGuestsState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialGuestsState value)? initial,
    TResult? Function(_LoadingGuestsState value)? loading,
    TResult? Function(_LoadedGuestsState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialGuestsState value)? initial,
    TResult Function(_LoadingGuestsState value)? loading,
    TResult Function(_LoadedGuestsState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuestsStateCopyWith<$Res> {
  factory $GuestsStateCopyWith(
          GuestsState value, $Res Function(GuestsState) then) =
      _$GuestsStateCopyWithImpl<$Res, GuestsState>;
}

/// @nodoc
class _$GuestsStateCopyWithImpl<$Res, $Val extends GuestsState>
    implements $GuestsStateCopyWith<$Res> {
  _$GuestsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialGuestsStateCopyWith<$Res> {
  factory _$$_InitialGuestsStateCopyWith(_$_InitialGuestsState value,
          $Res Function(_$_InitialGuestsState) then) =
      __$$_InitialGuestsStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialGuestsStateCopyWithImpl<$Res>
    extends _$GuestsStateCopyWithImpl<$Res, _$_InitialGuestsState>
    implements _$$_InitialGuestsStateCopyWith<$Res> {
  __$$_InitialGuestsStateCopyWithImpl(
      _$_InitialGuestsState _value, $Res Function(_$_InitialGuestsState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InitialGuestsState implements _InitialGuestsState {
  const _$_InitialGuestsState();

  @override
  String toString() {
    return 'GuestsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InitialGuestsState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<GuestModel> guests, String currentSortType)
        loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<GuestModel> guests, String currentSortType)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<GuestModel> guests, String currentSortType)? loaded,
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
    required TResult Function(_InitialGuestsState value) initial,
    required TResult Function(_LoadingGuestsState value) loading,
    required TResult Function(_LoadedGuestsState value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialGuestsState value)? initial,
    TResult? Function(_LoadingGuestsState value)? loading,
    TResult? Function(_LoadedGuestsState value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialGuestsState value)? initial,
    TResult Function(_LoadingGuestsState value)? loading,
    TResult Function(_LoadedGuestsState value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialGuestsState implements GuestsState {
  const factory _InitialGuestsState() = _$_InitialGuestsState;
}

/// @nodoc
abstract class _$$_LoadingGuestsStateCopyWith<$Res> {
  factory _$$_LoadingGuestsStateCopyWith(_$_LoadingGuestsState value,
          $Res Function(_$_LoadingGuestsState) then) =
      __$$_LoadingGuestsStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingGuestsStateCopyWithImpl<$Res>
    extends _$GuestsStateCopyWithImpl<$Res, _$_LoadingGuestsState>
    implements _$$_LoadingGuestsStateCopyWith<$Res> {
  __$$_LoadingGuestsStateCopyWithImpl(
      _$_LoadingGuestsState _value, $Res Function(_$_LoadingGuestsState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadingGuestsState implements _LoadingGuestsState {
  const _$_LoadingGuestsState();

  @override
  String toString() {
    return 'GuestsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadingGuestsState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<GuestModel> guests, String currentSortType)
        loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<GuestModel> guests, String currentSortType)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<GuestModel> guests, String currentSortType)? loaded,
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
    required TResult Function(_InitialGuestsState value) initial,
    required TResult Function(_LoadingGuestsState value) loading,
    required TResult Function(_LoadedGuestsState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialGuestsState value)? initial,
    TResult? Function(_LoadingGuestsState value)? loading,
    TResult? Function(_LoadedGuestsState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialGuestsState value)? initial,
    TResult Function(_LoadingGuestsState value)? loading,
    TResult Function(_LoadedGuestsState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingGuestsState implements GuestsState {
  const factory _LoadingGuestsState() = _$_LoadingGuestsState;
}

/// @nodoc
abstract class _$$_LoadedGuestsStateCopyWith<$Res> {
  factory _$$_LoadedGuestsStateCopyWith(_$_LoadedGuestsState value,
          $Res Function(_$_LoadedGuestsState) then) =
      __$$_LoadedGuestsStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<GuestModel> guests, String currentSortType});
}

/// @nodoc
class __$$_LoadedGuestsStateCopyWithImpl<$Res>
    extends _$GuestsStateCopyWithImpl<$Res, _$_LoadedGuestsState>
    implements _$$_LoadedGuestsStateCopyWith<$Res> {
  __$$_LoadedGuestsStateCopyWithImpl(
      _$_LoadedGuestsState _value, $Res Function(_$_LoadedGuestsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? guests = null,
    Object? currentSortType = null,
  }) {
    return _then(_$_LoadedGuestsState(
      null == guests
          ? _value._guests
          : guests // ignore: cast_nullable_to_non_nullable
              as List<GuestModel>,
      null == currentSortType
          ? _value.currentSortType
          : currentSortType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoadedGuestsState implements _LoadedGuestsState {
  const _$_LoadedGuestsState(
      final List<GuestModel> guests, this.currentSortType)
      : _guests = guests;

  final List<GuestModel> _guests;
  @override
  List<GuestModel> get guests {
    if (_guests is EqualUnmodifiableListView) return _guests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_guests);
  }

  @override
  final String currentSortType;

  @override
  String toString() {
    return 'GuestsState.loaded(guests: $guests, currentSortType: $currentSortType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadedGuestsState &&
            const DeepCollectionEquality().equals(other._guests, _guests) &&
            (identical(other.currentSortType, currentSortType) ||
                other.currentSortType == currentSortType));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_guests), currentSortType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedGuestsStateCopyWith<_$_LoadedGuestsState> get copyWith =>
      __$$_LoadedGuestsStateCopyWithImpl<_$_LoadedGuestsState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<GuestModel> guests, String currentSortType)
        loaded,
  }) {
    return loaded(guests, currentSortType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<GuestModel> guests, String currentSortType)? loaded,
  }) {
    return loaded?.call(guests, currentSortType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<GuestModel> guests, String currentSortType)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(guests, currentSortType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialGuestsState value) initial,
    required TResult Function(_LoadingGuestsState value) loading,
    required TResult Function(_LoadedGuestsState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialGuestsState value)? initial,
    TResult? Function(_LoadingGuestsState value)? loading,
    TResult? Function(_LoadedGuestsState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialGuestsState value)? initial,
    TResult Function(_LoadingGuestsState value)? loading,
    TResult Function(_LoadedGuestsState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _LoadedGuestsState implements GuestsState {
  const factory _LoadedGuestsState(
          final List<GuestModel> guests, final String currentSortType) =
      _$_LoadedGuestsState;

  List<GuestModel> get guests;
  String get currentSortType;
  @JsonKey(ignore: true)
  _$$_LoadedGuestsStateCopyWith<_$_LoadedGuestsState> get copyWith =>
      throw _privateConstructorUsedError;
}
