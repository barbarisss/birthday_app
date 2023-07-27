// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wish_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WishModel _$WishModelFromJson(Map<String, dynamic> json) {
  return _WishModel.fromJson(json);
}

/// @nodoc
mixin _$WishModel {
  String get title => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;
  bool get isSelected => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WishModelCopyWith<WishModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishModelCopyWith<$Res> {
  factory $WishModelCopyWith(WishModel value, $Res Function(WishModel) then) =
      _$WishModelCopyWithImpl<$Res, WishModel>;
  @useResult
  $Res call({String title, String link, bool isSelected});
}

/// @nodoc
class _$WishModelCopyWithImpl<$Res, $Val extends WishModel>
    implements $WishModelCopyWith<$Res> {
  _$WishModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? link = null,
    Object? isSelected = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WishModelCopyWith<$Res> implements $WishModelCopyWith<$Res> {
  factory _$$_WishModelCopyWith(
          _$_WishModel value, $Res Function(_$_WishModel) then) =
      __$$_WishModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String link, bool isSelected});
}

/// @nodoc
class __$$_WishModelCopyWithImpl<$Res>
    extends _$WishModelCopyWithImpl<$Res, _$_WishModel>
    implements _$$_WishModelCopyWith<$Res> {
  __$$_WishModelCopyWithImpl(
      _$_WishModel _value, $Res Function(_$_WishModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? link = null,
    Object? isSelected = null,
  }) {
    return _then(_$_WishModel(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WishModel implements _WishModel {
  _$_WishModel(
      {required this.title, required this.link, this.isSelected = false});

  factory _$_WishModel.fromJson(Map<String, dynamic> json) =>
      _$$_WishModelFromJson(json);

  @override
  final String title;
  @override
  final String link;
  @override
  @JsonKey()
  final bool isSelected;

  @override
  String toString() {
    return 'WishModel(title: $title, link: $link, isSelected: $isSelected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WishModel &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, link, isSelected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WishModelCopyWith<_$_WishModel> get copyWith =>
      __$$_WishModelCopyWithImpl<_$_WishModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WishModelToJson(
      this,
    );
  }
}

abstract class _WishModel implements WishModel {
  factory _WishModel(
      {required final String title,
      required final String link,
      final bool isSelected}) = _$_WishModel;

  factory _WishModel.fromJson(Map<String, dynamic> json) =
      _$_WishModel.fromJson;

  @override
  String get title;
  @override
  String get link;
  @override
  bool get isSelected;
  @override
  @JsonKey(ignore: true)
  _$$_WishModelCopyWith<_$_WishModel> get copyWith =>
      throw _privateConstructorUsedError;
}
