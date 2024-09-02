// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'formato_notas_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FormatoNotaModelAdapter extends TypeAdapter<_$FormatoNotasModelImpl> {
  @override
  final int typeId = 6;

  @override
  _$FormatoNotasModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$FormatoNotasModelImpl(
      id: fields[0] as int?,
      nome: fields[1] as String?,
      descricao: fields[2] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$FormatoNotasModelImpl obj) {
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
      other is FormatoNotaModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FormatoNotasModelImpl _$$FormatoNotasModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FormatoNotasModelImpl(
      id: (json['id'] as num?)?.toInt(),
      nome: json['nome'] as String?,
      descricao: json['descricao'] as String?,
    );

Map<String, dynamic> _$$FormatoNotasModelImplToJson(
        _$FormatoNotasModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nome': instance.nome,
      'descricao': instance.descricao,
    };
