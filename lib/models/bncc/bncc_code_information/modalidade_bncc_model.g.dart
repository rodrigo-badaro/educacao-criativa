// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modalidade_bncc_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ModalidadeBNCCAdapter extends TypeAdapter<ModalidadeBNCC> {
  @override
  final int typeId = 58;

  @override
  ModalidadeBNCC read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return ModalidadeBNCC.educacaoInfantil;
      case 1:
        return ModalidadeBNCC.ensinoFundamental;
      case 2:
        return ModalidadeBNCC.ensinoMedio;
      default:
        return ModalidadeBNCC.educacaoInfantil;
    }
  }

  @override
  void write(BinaryWriter writer, ModalidadeBNCC obj) {
    switch (obj) {
      case ModalidadeBNCC.educacaoInfantil:
        writer.writeByte(0);
        break;
      case ModalidadeBNCC.ensinoFundamental:
        writer.writeByte(1);
        break;
      case ModalidadeBNCC.ensinoMedio:
        writer.writeByte(2);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ModalidadeBNCCAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
