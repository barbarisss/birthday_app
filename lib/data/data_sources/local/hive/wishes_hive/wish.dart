import 'package:hive/hive.dart';
part 'wish.g.dart';

@HiveType(typeId: 1)
class Wish {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String title;
  @HiveField(2)
  final String link;
  @HiveField(3)
  final bool isSelected;

  Wish({
    required this.id,
    required this.title,
    required this.link,
    required this.isSelected,
  });
}
