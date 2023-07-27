// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guest_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GuestModel _$$_GuestModelFromJson(Map<String, dynamic> json) =>
    _$_GuestModel(
      id: json['id'] as int? ?? 0,
      avatar: json['avatar'] as String,
      name: json['name'] as String,
      surname: json['surname'] as String,
      birthDate: DateTime.parse(json['birthDate'] as String),
      phoneNumber: json['phoneNumber'] as String,
      profession: json['profession'] as String,
    );

Map<String, dynamic> _$$_GuestModelToJson(_$_GuestModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'avatar': instance.avatar,
      'name': instance.name,
      'surname': instance.surname,
      'birthDate': instance.birthDate.toIso8601String(),
      'phoneNumber': instance.phoneNumber,
      'profession': instance.profession,
    };
