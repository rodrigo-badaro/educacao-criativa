// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deficiencia_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DeficienciaModelAdapter extends TypeAdapter<_$DeficienciaModelImpl> {
  @override
  final int typeId = 14;

  @override
  _$DeficienciaModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$DeficienciaModelImpl(
      id: fields[0] as int?,
      tipo: fields[1] as String?,
      descricao: fields[2] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$DeficienciaModelImpl obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.tipo)
      ..writeByte(2)
      ..write(obj.descricao);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DeficienciaModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeficienciaModelImpl _$$DeficienciaModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DeficienciaModelImpl(
      id: (json['id'] as num?)?.toInt(),
      tipo: json['tipo'] as String?,
      descricao: json['descricao'] as String?,
    );

Map<String, dynamic> _$$DeficienciaModelImplToJson(
        _$DeficienciaModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tipo': instance.tipo,
      'descricao': instance.descricao,
    };
