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
    required TResult Function() getAllGuests,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllGuests,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllGuests,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllGuestsEvent value) getAllGuests,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllGuestsEvent value)? getAllGuests,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllGuestsEvent value)? getAllGuests,
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
}

/// @nodoc
class __$$GetAllGuestsEventCopyWithImpl<$Res>
    extends _$GuestsEventCopyWithImpl<$Res, _$GetAllGuestsEvent>
    implements _$$GetAllGuestsEventCopyWith<$Res> {
  __$$GetAllGuestsEventCopyWithImpl(
      _$GetAllGuestsEvent _value, $Res Function(_$GetAllGuestsEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAllGuestsEvent implements GetAllGuestsEvent {
  const _$GetAllGuestsEvent();

  @override
  String toString() {
    return 'GuestsEvent.getAllGuests()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllGuestsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllGuests,
  }) {
    return getAllGuests();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllGuests,
  }) {
    return getAllGuests?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllGuests,
    required TResult orElse(),
  }) {
    if (getAllGuests != null) {
      return getAllGuests();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllGuestsEvent value) getAllGuests,
  }) {
    return getAllGuests(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllGuestsEvent value)? getAllGuests,
  }) {
    return getAllGuests?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllGuestsEvent value)? getAllGuests,
    required TResult orElse(),
  }) {
    if (getAllGuests != null) {
      return getAllGuests(this);
    }
    return orElse();
  }
}

abstract class GetAllGuestsEvent implements GuestsEvent {
  const factory GetAllGuestsEvent() = _$GetAllGuestsEvent;
}

/// @nodoc
mixin _$GuestsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<GuestModel> guests) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<GuestModel> guests)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<GuestModel> guests)? loaded,
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
    required TResult Function(List<GuestModel> guests) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<GuestModel> guests)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<GuestModel> guests)? loaded,
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
    required TResult Function(List<GuestModel> guests) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<GuestModel> guests)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<GuestModel> guests)? loaded,
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
  $Res call({List<GuestModel> guests});
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
  }) {
    return _then(_$_LoadedGuestsState(
      null == guests
          ? _value._guests
          : guests // ignore: cast_nullable_to_non_nullable
              as List<GuestModel>,
    ));
  }
}

/// @nodoc

class _$_LoadedGuestsState implements _LoadedGuestsState {
  const _$_LoadedGuestsState(final List<GuestModel> guests) : _guests = guests;

  final List<GuestModel> _guests;
  @override
  List<GuestModel> get guests {
    if (_guests is EqualUnmodifiableListView) return _guests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_guests);
  }

  @override
  String toString() {
    return 'GuestsState.loaded(guests: $guests)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadedGuestsState &&
            const DeepCollectionEquality().equals(other._guests, _guests));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_guests));

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
    required TResult Function(List<GuestModel> guests) loaded,
  }) {
    return loaded(guests);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<GuestModel> guests)? loaded,
  }) {
    return loaded?.call(guests);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<GuestModel> guests)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(guests);
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
  const factory _LoadedGuestsState(final List<GuestModel> guests) =
      _$_LoadedGuestsState;

  List<GuestModel> get guests;
  @JsonKey(ignore: true)
  _$$_LoadedGuestsStateCopyWith<_$_LoadedGuestsState> get copyWith =>
      throw _privateConstructorUsedError;
}
