// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diretor_info_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DiretorInfoAdapter extends TypeAdapter<_$DiretorInfoModelImpl> {
  @override
  final int typeId = 69;

  @override
  _$DiretorInfoModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$DiretorInfoModelImpl(
      id: fields[0] as int?,
      unidades: (fields[1] as List?)?.cast<UnidadeModel>(),
    );
  }

  @override
  void write(BinaryWriter writer, _$DiretorInfoModelImpl obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.unidades);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DiretorInfoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DiretorInfoModelImpl _$$DiretorInfoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DiretorInfoModelImpl(
      id: (json['id'] as num?)?.toInt(),
      unidades: (json['unidades'] as List<dynamic>?)
          ?.map((e) => UnidadeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DiretorInfoModelImplToJson(
        _$DiretorInfoModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'unidades': instance.unidades,
    };
