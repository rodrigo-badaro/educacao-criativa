// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sexo_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SexoModelAdapter extends TypeAdapter<SexoModel> {
  @override
  final int typeId = 42;

  @override
  SexoModel read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return SexoModel.masculino;
      case 1:
        return SexoModel.feminino;
      default:
        return SexoModel.masculino;
    }
  }

  @override
  void write(BinaryWriter writer, SexoModel obj) {
    switch (obj) {
      case SexoModel.masculino:
        writer.writeByte(0);
        break;
      case SexoModel.feminino:
        writer.writeByte(1);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SexoModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
