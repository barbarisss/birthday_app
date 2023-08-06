// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entertainment_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EntertainmentItemModel _$EntertainmentItemModelFromJson(
    Map<String, dynamic> json) {
  return _EntertaimentItemModel.fromJson(json);
}

/// @nodoc
mixin _$EntertainmentItemModel {
  String get icon => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get discription => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EntertainmentItemModelCopyWith<EntertainmentItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntertainmentItemModelCopyWith<$Res> {
  factory $EntertainmentItemModelCopyWith(EntertainmentItemModel value,
          $Res Function(EntertainmentItemModel) then) =
      _$EntertainmentItemModelCopyWithImpl<$Res, EntertainmentItemModel>;
  @useResult
  $Res call({String icon, String title, String discription});
}

/// @nodoc
class _$EntertainmentItemModelCopyWithImpl<$Res,
        $Val extends EntertainmentItemModel>
    implements $EntertainmentItemModelCopyWith<$Res> {
  _$EntertainmentItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = null,
    Object? title = null,
    Object? discription = null,
  }) {
    return _then(_value.copyWith(
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      discription: null == discription
          ? _value.discription
          : discription // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EntertaimentItemModelCopyWith<$Res>
    implements $EntertainmentItemModelCopyWith<$Res> {
  factory _$$_EntertaimentItemModelCopyWith(_$_EntertaimentItemModel value,
          $Res Function(_$_EntertaimentItemModel) then) =
      __$$_EntertaimentItemModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String icon, String title, String discription});
}

/// @nodoc
class __$$_EntertaimentItemModelCopyWithImpl<$Res>
    extends _$EntertainmentItemModelCopyWithImpl<$Res, _$_EntertaimentItemModel>
    implements _$$_EntertaimentItemModelCopyWith<$Res> {
  __$$_EntertaimentItemModelCopyWithImpl(_$_EntertaimentItemModel _value,
      $Res Function(_$_EntertaimentItemModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = null,
    Object? title = null,
    Object? discription = null,
  }) {
    return _then(_$_EntertaimentItemModel(
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      discription: null == discription
          ? _value.discription
          : discription // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EntertaimentItemModel implements _EntertaimentItemModel {
  _$_EntertaimentItemModel(
      {required this.icon, required this.title, required this.discription});

  factory _$_EntertaimentItemModel.fromJson(Map<String, dynamic> json) =>
      _$$_EntertaimentItemModelFromJson(json);

  @override
  final String icon;
  @override
  final String title;
  @override
  final String discription;

  @override
  String toString() {
    return 'EntertainmentItemModel(icon: $icon, title: $title, discription: $discription)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EntertaimentItemModel &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.discription, discription) ||
                other.discription == discription));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, icon, title, discription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EntertaimentItemModelCopyWith<_$_EntertaimentItemModel> get copyWith =>
      __$$_EntertaimentItemModelCopyWithImpl<_$_EntertaimentItemModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EntertaimentItemModelToJson(
      this,
    );
  }
}

abstract class _EntertaimentItemModel implements EntertainmentItemModel {
  factory _EntertaimentItemModel(
      {required final String icon,
      required final String title,
      required final String discription}) = _$_EntertaimentItemModel;

  factory _EntertaimentItemModel.fromJson(Map<String, dynamic> json) =
      _$_EntertaimentItemModel.fromJson;

  @override
  String get icon;
  @override
  String get title;
  @override
  String get discription;
  @override
  @JsonKey(ignore: true)
  _$$_EntertaimentItemModelCopyWith<_$_EntertaimentItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}
