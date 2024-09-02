// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tema_bncc_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TemaBNCCAdapter extends TypeAdapter<TemaBNCC> {
  @override
  final int typeId = 41;

  @override
  TemaBNCC read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return TemaBNCC.iEO;
      case 1:
        return TemaBNCC.iCG;
      case 2:
        return TemaBNCC.iTS;
      case 3:
        return TemaBNCC.iEF;
      case 4:
        return TemaBNCC.iET;
      case 5:
        return TemaBNCC.fAR;
      case 6:
        return TemaBNCC.fCI;
      case 7:
        return TemaBNCC.fEF;
      case 8:
        return TemaBNCC.fER;
      case 9:
        return TemaBNCC.fGE;
      case 10:
        return TemaBNCC.fHI;
      case 11:
        return TemaBNCC.fLI;
      case 12:
        return TemaBNCC.fLP;
      case 13:
        return TemaBNCC.fMA;
      case 14:
        return TemaBNCC.mLGG;
      case 15:
        return TemaBNCC.mLP;
      case 16:
        return TemaBNCC.mMAT;
      case 17:
        return TemaBNCC.mCNT;
      case 18:
        return TemaBNCC.mCHS;
      default:
        return TemaBNCC.iEO;
    }
  }

  @override
  void write(BinaryWriter writer, TemaBNCC obj) {
    switch (obj) {
      case TemaBNCC.iEO:
        writer.writeByte(0);
        break;
      case TemaBNCC.iCG:
        writer.writeByte(1);
        break;
      case TemaBNCC.iTS:
        writer.writeByte(2);
        break;
      case TemaBNCC.iEF:
        writer.writeByte(3);
        break;
      case TemaBNCC.iET:
        writer.writeByte(4);
        break;
      case TemaBNCC.fAR:
        writer.writeByte(5);
        break;
      case TemaBNCC.fCI:
        writer.writeByte(6);
        break;
      case TemaBNCC.fEF:
        writer.writeByte(7);
        break;
      case TemaBNCC.fER:
        writer.writeByte(8);
        break;
      case TemaBNCC.fGE:
        writer.writeByte(9);
        break;
      case TemaBNCC.fHI:
        writer.writeByte(10);
        break;
      case TemaBNCC.fLI:
        writer.writeByte(11);
        break;
      case TemaBNCC.fLP:
        writer.writeByte(12);
        break;
      case TemaBNCC.fMA:
        writer.writeByte(13);
        break;
      case TemaBNCC.mLGG:
        writer.writeByte(14);
        break;
      case TemaBNCC.mLP:
        writer.writeByte(15);
        break;
      case TemaBNCC.mMAT:
        writer.writeByte(16);
        break;
      case TemaBNCC.mCNT:
        writer.writeByte(17);
        break;
      case TemaBNCC.mCHS:
        writer.writeByte(18);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TemaBNCCAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
