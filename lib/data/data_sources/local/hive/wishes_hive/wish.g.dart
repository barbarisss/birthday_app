// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wish.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WishAdapter extends TypeAdapter<Wish> {
  @override
  final int typeId = 1;

  @override
  Wish read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Wish(
      title: fields[0] as String,
      link: fields[1] as String,
      isSelected: fields[2] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, Wish obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.link)
      ..writeByte(2)
      ..write(obj.isSelected);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WishAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
