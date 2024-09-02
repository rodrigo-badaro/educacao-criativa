// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'periodicidade_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PeriodicidadeAdapter extends TypeAdapter<_$PeriodicidadeModelImpl> {
  @override
  final int typeId = 9;

  @override
  _$PeriodicidadeModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$PeriodicidadeModelImpl(
      id: fields[0] as int?,
      nome: fields[1] as String?,
      descricao: fields[2] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$PeriodicidadeModelImpl obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.nome)
      ..writeByte(2)
      ..write(obj.descricao);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PeriodicidadeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PeriodicidadeModelImpl _$$PeriodicidadeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PeriodicidadeModelImpl(
      id: (json['id'] as num?)?.toInt(),
      nome: json['nome'] as String?,
      descricao: json['descricao'] as String?,
    );

Map<String, dynamic> _$$PeriodicidadeModelImplToJson(
        _$PeriodicidadeModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nome': instance.nome,
      'descricao': instance.descricao,
    };
