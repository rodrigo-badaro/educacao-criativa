// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serie_bncc_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SerieBNCCAdapter extends TypeAdapter<SerieBNCC> {
  @override
  final int typeId = 59;

  @override
  SerieBNCC read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return SerieBNCC.i1;
      case 1:
        return SerieBNCC.i2;
      case 2:
        return SerieBNCC.i3;
      case 3:
        return SerieBNCC.f1;
      case 4:
        return SerieBNCC.f2;
      case 5:
        return SerieBNCC.f3;
      case 6:
        return SerieBNCC.f4;
      case 7:
        return SerieBNCC.f5;
      case 8:
        return SerieBNCC.f6;
      case 9:
        return SerieBNCC.f7;
      case 10:
        return SerieBNCC.f8;
      case 11:
        return SerieBNCC.f9;
      case 12:
        return SerieBNCC.m1;
      case 13:
        return SerieBNCC.m2;
      case 14:
        return SerieBNCC.m3;
      default:
        return SerieBNCC.i1;
    }
  }

  @override
  void write(BinaryWriter writer, SerieBNCC obj) {
    switch (obj) {
      case SerieBNCC.i1:
        writer.writeByte(0);
        break;
      case SerieBNCC.i2:
        writer.writeByte(1);
        break;
      case SerieBNCC.i3:
        writer.writeByte(2);
        break;
      case SerieBNCC.f1:
        writer.writeByte(3);
        break;
      case SerieBNCC.f2:
        writer.writeByte(4);
        break;
      case SerieBNCC.f3:
        writer.writeByte(5);
        break;
      case SerieBNCC.f4:
        writer.writeByte(6);
        break;
      case SerieBNCC.f5:
        writer.writeByte(7);
        break;
      case SerieBNCC.f6:
        writer.writeByte(8);
        break;
      case SerieBNCC.f7:
        writer.writeByte(9);
        break;
      case SerieBNCC.f8:
        writer.writeByte(10);
        break;
      case SerieBNCC.f9:
        writer.writeByte(11);
        break;
      case SerieBNCC.m1:
        writer.writeByte(12);
        break;
      case SerieBNCC.m2:
        writer.writeByte(13);
        break;
      case SerieBNCC.m3:
        writer.writeByte(14);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SerieBNCCAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
