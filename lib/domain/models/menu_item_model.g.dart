// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MenuItemModel _$$_MenuItemModelFromJson(Map<String, dynamic> json) =>
    _$_MenuItemModel(
      image: json['image'] as String,
      title: json['title'] as String,
      ingredients: (json['ingredients'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_MenuItemModelToJson(_$_MenuItemModel instance) =>
    <String, dynamic>{
      'image': instance.image,
      'title': instance.title,
      'ingredients': instance.ingredients,
    };
