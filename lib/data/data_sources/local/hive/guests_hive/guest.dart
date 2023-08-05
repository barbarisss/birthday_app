import 'package:hive/hive.dart';
part 'guest.g.dart';

@HiveType(typeId: 0)
class Guest {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final DateTime additionDate;
  @HiveField(2)
  final String avatar;
  @HiveField(3)
  final String name;
  @HiveField(4)
  final String surname;
  @HiveField(5)
  final DateTime birthDate;
  @HiveField(6)
  final String phoneNumber;
  @HiveField(7)
  final String profession;

  Guest({
    required this.id,
    required this.additionDate,
    required this.avatar,
    required this.name,
    required this.surname,
    required this.birthDate,
    required this.phoneNumber,
    required this.profession,
  });
}
