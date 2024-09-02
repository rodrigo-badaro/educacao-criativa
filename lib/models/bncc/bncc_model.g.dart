// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bncc_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BNCCAdapter extends TypeAdapter<_$BNCCImpl> {
  @override
  final int typeId = 38;

  @override
  _$BNCCImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$BNCCImpl(
      codigo: fields[0] as String?,
      nome: fields[1] as String?,
      descricao: fields[2] as String?,
      sugestao: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$BNCCImpl obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.codigo)
      ..writeByte(1)
      ..write(obj.nome)
      ..writeByte(2)
      ..write(obj.descricao)
      ..writeByte(3)
      ..write(obj.sugestao);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BNCCAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BNCCImpl _$$BNCCImplFromJson(Map<String, dynamic> json) => _$BNCCImpl(
      codigo: json['codigo'] as String?,
      nome: json['nome'] as String?,
      descricao: json['descricao'] as String?,
      sugestao: json['sugestao'] as String?,
    );

Map<String, dynamic> _$$BNCCImplToJson(_$BNCCImpl instance) =>
    <String, dynamic>{
      'codigo': instance.codigo,
      'nome': instance.nome,
      'descricao': instance.descricao,
      'sugestao': instance.sugestao,
    };
