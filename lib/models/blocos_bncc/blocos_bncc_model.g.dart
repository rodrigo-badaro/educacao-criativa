// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blocos_bncc_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BlocosBNCCAdapter extends TypeAdapter<BlocosBNCC> {
  @override
  final int typeId = 80;

  @override
  BlocosBNCC read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return BlocosBNCC.bloco1;
      case 1:
        return BlocosBNCC.bloco2;
      case 2:
        return BlocosBNCC.bloco3;
      default:
        return BlocosBNCC.bloco1;
    }
  }

  @override
  void write(BinaryWriter writer, BlocosBNCC obj) {
    switch (obj) {
      case BlocosBNCC.bloco1:
        writer.writeByte(0);
        break;
      case BlocosBNCC.bloco2:
        writer.writeByte(1);
        break;
      case BlocosBNCC.bloco3:
        writer.writeByte(2);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BlocosBNCCAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
