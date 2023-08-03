// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'menu_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MenuItemModel _$MenuItemModelFromJson(Map<String, dynamic> json) {
  return _MenuItemModel.fromJson(json);
}

/// @nodoc
mixin _$MenuItemModel {
  String get image => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  List<String> get ingredients => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MenuItemModelCopyWith<MenuItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuItemModelCopyWith<$Res> {
  factory $MenuItemModelCopyWith(
          MenuItemModel value, $Res Function(MenuItemModel) then) =
      _$MenuItemModelCopyWithImpl<$Res, MenuItemModel>;
  @useResult
  $Res call({String image, String title, List<String> ingredients});
}

/// @nodoc
class _$MenuItemModelCopyWithImpl<$Res, $Val extends MenuItemModel>
    implements $MenuItemModelCopyWith<$Res> {
  _$MenuItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? title = null,
    Object? ingredients = null,
  }) {
    return _then(_value.copyWith(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      ingredients: null == ingredients
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MenuItemModelCopyWith<$Res>
    implements $MenuItemModelCopyWith<$Res> {
  factory _$$_MenuItemModelCopyWith(
          _$_MenuItemModel value, $Res Function(_$_MenuItemModel) then) =
      __$$_MenuItemModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String image, String title, List<String> ingredients});
}

/// @nodoc
class __$$_MenuItemModelCopyWithImpl<$Res>
    extends _$MenuItemModelCopyWithImpl<$Res, _$_MenuItemModel>
    implements _$$_MenuItemModelCopyWith<$Res> {
  __$$_MenuItemModelCopyWithImpl(
      _$_MenuItemModel _value, $Res Function(_$_MenuItemModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? title = null,
    Object? ingredients = null,
  }) {
    return _then(_$_MenuItemModel(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      ingredients: null == ingredients
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MenuItemModel implements _MenuItemModel {
  _$_MenuItemModel(
      {required this.image,
      required this.title,
      required final List<String> ingredients})
      : _ingredients = ingredients;

  factory _$_MenuItemModel.fromJson(Map<String, dynamic> json) =>
      _$$_MenuItemModelFromJson(json);

  @override
  final String image;
  @override
  final String title;
  final List<String> _ingredients;
  @override
  List<String> get ingredients {
    if (_ingredients is EqualUnmodifiableListView) return _ingredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  @override
  String toString() {
    return 'MenuItemModel(image: $image, title: $title, ingredients: $ingredients)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MenuItemModel &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, image, title,
      const DeepCollectionEquality().hash(_ingredients));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MenuItemModelCopyWith<_$_MenuItemModel> get copyWith =>
      __$$_MenuItemModelCopyWithImpl<_$_MenuItemModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MenuItemModelToJson(
      this,
    );
  }
}

abstract class _MenuItemModel implements MenuItemModel {
  factory _MenuItemModel(
      {required final String image,
      required final String title,
      required final List<String> ingredients}) = _$_MenuItemModel;

  factory _MenuItemModel.fromJson(Map<String, dynamic> json) =
      _$_MenuItemModel.fromJson;

  @override
  String get image;
  @override
  String get title;
  @override
  List<String> get ingredients;
  @override
  @JsonKey(ignore: true)
  _$$_MenuItemModelCopyWith<_$_MenuItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}
