// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'material_apoio_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MaterialApoioAdapter extends TypeAdapter<_$MaterialApoioImpl> {
  @override
  final int typeId = 82;

  @override
  _$MaterialApoioImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$MaterialApoioImpl(
      id: fields[0] as int?,
      nome: fields[1] as MaterialApoioNome?,
      url: fields[2] as String?,
      createdAt: fields[3] as DateTime?,
      updatedAt: fields[4] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, _$MaterialApoioImpl obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.nome)
      ..writeByte(2)
      ..write(obj.url)
      ..writeByte(3)
      ..write(obj.createdAt)
      ..writeByte(4)
      ..write(obj.updatedAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MaterialApoioAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MaterialApoioImpl _$$MaterialApoioImplFromJson(Map<String, dynamic> json) =>
    _$MaterialApoioImpl(
      id: (json['id'] as num?)?.toInt(),
      nome: const MaterialApoioNomeConverter().fromJson(json['nome']),
      url: json['url'] as String?,
      createdAt: const DateTimeAdapter().fromJson(json['created_at']),
      updatedAt: const DateTimeAdapter().fromJson(json['updated_at']),
    );

Map<String, dynamic> _$$MaterialApoioImplToJson(_$MaterialApoioImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nome': const MaterialApoioNomeConverter().toJson(instance.nome),
      'url': instance.url,
      'created_at': const DateTimeAdapter().toJson(instance.createdAt),
      'updated_at': const DateTimeAdapter().toJson(instance.updatedAt),
    };
