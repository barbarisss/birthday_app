import 'package:birthday_app/data/models/model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'wish_model.freezed.dart';
part 'wish_model.g.dart';

@freezed
class WishModel extends Model with _$WishModel {
  factory WishModel({
    required String title,
    required String link,
    @Default(false) bool isSelected,
  }) = _WishModel;

  factory WishModel.fromJson(Map<String, dynamic> json) =>
      _$WishModelFromJson(json);
}
