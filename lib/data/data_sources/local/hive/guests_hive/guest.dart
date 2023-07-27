import 'package:hive/hive.dart';
part 'guest.g.dart';

@HiveType(typeId: 0)
class Guest {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String avatar;
  @HiveField(2)
  final String name;
  @HiveField(3)
  final String surname;
  @HiveField(4)
  final DateTime birthDate;
  @HiveField(5)
  final String phoneNumber;
  @HiveField(6)
  final String profession;

  Guest({
    required this.id,
    required this.avatar,
    required this.name,
    required this.surname,
    required this.birthDate,
    required this.phoneNumber,
    required this.profession,
  });
}
