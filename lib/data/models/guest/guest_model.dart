import 'package:birthday_app/data/models/model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'guest_model.freezed.dart';
part 'guest_model.g.dart';

@freezed
class GuestModel extends Model with _$GuestModel {
  factory GuestModel({
    @Default(0) int id,
    required String avatar,
    required String name,
    required String surname,
    required DateTime birthDate,
    required String phoneNumber,
    required String profession,
  }) = _GuestModel;

  factory GuestModel.fromJson(Map<String, dynamic> json) =>
      _$GuestModelFromJson(json);
}
