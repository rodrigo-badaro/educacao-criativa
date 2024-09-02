// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'telefone_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TelefoneModelAdapter extends TypeAdapter<_$TelefoneModelImpl> {
  @override
  final int typeId = 11;

  @override
  _$TelefoneModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$TelefoneModelImpl(
      id: fields[0] as int?,
      numero: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$TelefoneModelImpl obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.numero);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TelefoneModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TelefoneModelImpl _$$TelefoneModelImplFromJson(Map<String, dynamic> json) =>
    _$TelefoneModelImpl(
      id: (json['id'] as num?)?.toInt(),
      numero: json['numero'] as String?,
    );

Map<String, dynamic> _$$TelefoneModelImplToJson(_$TelefoneModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'numero': instance.numero,
    };
