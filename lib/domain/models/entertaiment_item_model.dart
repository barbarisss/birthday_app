import 'package:freezed_annotation/freezed_annotation.dart';

part 'entertaiment_item_model.freezed.dart';
part 'entertaiment_item_model.g.dart';

@freezed
class EntertaimentItemModel with _$EntertaimentItemModel {
  factory EntertaimentItemModel({
    required String icon,
    required String title,
    required String discription,
  }) = _EntertaimentItemModel;

  factory EntertaimentItemModel.fromJson(Map<String, dynamic> json) =>
      _$EntertaimentItemModelFromJson(json);
}
