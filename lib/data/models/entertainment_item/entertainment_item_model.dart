import 'package:freezed_annotation/freezed_annotation.dart';

part 'entertaiment_item_model.freezed.dart';
part 'entertainment_item_model.g.dart';

@freezed
class EntertainmentItemModel with _$EntertainmentItemModel {
  factory EntertainmentItemModel({
    required String icon,
    required String title,
    required String discription,
  }) = _EntertaimentItemModel;

  factory EntertainmentItemModel.fromJson(Map<String, dynamic> json) =>
      _$EntertainmentItemModelFromJson(json);
}
