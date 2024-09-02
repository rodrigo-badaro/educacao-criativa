// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'material_apoio_nome_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MaterialApoioNomeAdapter extends TypeAdapter<MaterialApoioNome> {
  @override
  final int typeId = 83;

  @override
  MaterialApoioNome read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return MaterialApoioNome.professor;
      case 1:
        return MaterialApoioNome.diretor;
      default:
        return MaterialApoioNome.professor;
    }
  }

  @override
  void write(BinaryWriter writer, MaterialApoioNome obj) {
    switch (obj) {
      case MaterialApoioNome.professor:
        writer.writeByte(0);
        break;
      case MaterialApoioNome.diretor:
        writer.writeByte(1);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MaterialApoioNomeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
