// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wish_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WishModel _$$_WishModelFromJson(Map<String, dynamic> json) => _$_WishModel(
      title: json['title'] as String,
      link: json['link'] as String,
      isSelected: json['isSelected'] as bool? ?? false,
    );

Map<String, dynamic> _$$_WishModelToJson(_$_WishModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'link': instance.link,
      'isSelected': instance.isSelected,
    };
