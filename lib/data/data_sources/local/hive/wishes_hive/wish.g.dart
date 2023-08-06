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
      id: fields[0] as String,
      title: fields[1] as String,
      link: fields[2] as String,
      isSelected: fields[3] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, Wish obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.link)
      ..writeByte(3)
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
