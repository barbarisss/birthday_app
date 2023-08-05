// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'guest_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GuestModel _$GuestModelFromJson(Map<String, dynamic> json) {
  return _GuestModel.fromJson(json);
}

/// @nodoc
mixin _$GuestModel {
  String get id => throw _privateConstructorUsedError;
  DateTime get additionDate => throw _privateConstructorUsedError;
  String get avatar => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get surname => throw _privateConstructorUsedError;
  DateTime get birthDate => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get profession => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GuestModelCopyWith<GuestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuestModelCopyWith<$Res> {
  factory $GuestModelCopyWith(
          GuestModel value, $Res Function(GuestModel) then) =
      _$GuestModelCopyWithImpl<$Res, GuestModel>;
  @useResult
  $Res call(
      {String id,
      DateTime additionDate,
      String avatar,
      String name,
      String surname,
      DateTime birthDate,
      String phoneNumber,
      String profession});
}

/// @nodoc
class _$GuestModelCopyWithImpl<$Res, $Val extends GuestModel>
    implements $GuestModelCopyWith<$Res> {
  _$GuestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? additionDate = null,
    Object? avatar = null,
    Object? name = null,
    Object? surname = null,
    Object? birthDate = null,
    Object? phoneNumber = null,
    Object? profession = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      additionDate: null == additionDate
          ? _value.additionDate
          : additionDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      surname: null == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      birthDate: null == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      profession: null == profession
          ? _value.profession
          : profession // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GuestModelCopyWith<$Res>
    implements $GuestModelCopyWith<$Res> {
  factory _$$_GuestModelCopyWith(
          _$_GuestModel value, $Res Function(_$_GuestModel) then) =
      __$$_GuestModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime additionDate,
      String avatar,
      String name,
      String surname,
      DateTime birthDate,
      String phoneNumber,
      String profession});
}

/// @nodoc
class __$$_GuestModelCopyWithImpl<$Res>
    extends _$GuestModelCopyWithImpl<$Res, _$_GuestModel>
    implements _$$_GuestModelCopyWith<$Res> {
  __$$_GuestModelCopyWithImpl(
      _$_GuestModel _value, $Res Function(_$_GuestModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? additionDate = null,
    Object? avatar = null,
    Object? name = null,
    Object? surname = null,
    Object? birthDate = null,
    Object? phoneNumber = null,
    Object? profession = null,
  }) {
    return _then(_$_GuestModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      additionDate: null == additionDate
          ? _value.additionDate
          : additionDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      surname: null == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      birthDate: null == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      profession: null == profession
          ? _value.profession
          : profession // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GuestModel implements _GuestModel {
  _$_GuestModel(
      {required this.id,
      required this.additionDate,
      required this.avatar,
      required this.name,
      required this.surname,
      required this.birthDate,
      required this.phoneNumber,
      required this.profession});

  factory _$_GuestModel.fromJson(Map<String, dynamic> json) =>
      _$$_GuestModelFromJson(json);

  @override
  final String id;
  @override
  final DateTime additionDate;
  @override
  final String avatar;
  @override
  final String name;
  @override
  final String surname;
  @override
  final DateTime birthDate;
  @override
  final String phoneNumber;
  @override
  final String profession;

  @override
  String toString() {
    return 'GuestModel(id: $id, additionDate: $additionDate, avatar: $avatar, name: $name, surname: $surname, birthDate: $birthDate, phoneNumber: $phoneNumber, profession: $profession)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GuestModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.additionDate, additionDate) ||
                other.additionDate == additionDate) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.surname, surname) || other.surname == surname) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.profession, profession) ||
                other.profession == profession));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, additionDate, avatar, name,
      surname, birthDate, phoneNumber, profession);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GuestModelCopyWith<_$_GuestModel> get copyWith =>
      __$$_GuestModelCopyWithImpl<_$_GuestModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GuestModelToJson(
      this,
    );
  }
}

abstract class _GuestModel implements GuestModel {
  factory _GuestModel(
      {required final String id,
      required final DateTime additionDate,
      required final String avatar,
      required final String name,
      required final String surname,
      required final DateTime birthDate,
      required final String phoneNumber,
      required final String profession}) = _$_GuestModel;

  factory _GuestModel.fromJson(Map<String, dynamic> json) =
      _$_GuestModel.fromJson;

  @override
  String get id;
  @override
  DateTime get additionDate;
  @override
  String get avatar;
  @override
  String get name;
  @override
  String get surname;
  @override
  DateTime get birthDate;
  @override
  String get phoneNumber;
  @override
  String get profession;
  @override
  @JsonKey(ignore: true)
  _$$_GuestModelCopyWith<_$_GuestModel> get copyWith =>
      throw _privateConstructorUsedError;
}
