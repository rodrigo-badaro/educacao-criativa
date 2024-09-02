// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'estacao_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class EstacaoModelAdapter extends TypeAdapter<_$EstacaoModelImpl> {
  @override
  final int typeId = 16;

  @override
  _$EstacaoModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$EstacaoModelImpl(
      id: fields[0] as int?,
      nome: fields[1] as String?,
      descricao: fields[2] as String?,
      items: (fields[3] as List?)?.cast<EstacaoModelItem>(),
    );
  }

  @override
  void write(BinaryWriter writer, _$EstacaoModelImpl obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.nome)
      ..writeByte(2)
      ..write(obj.descricao)
      ..writeByte(3)
      ..write(obj.items);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EstacaoModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EstacaoModelImpl _$$EstacaoModelImplFromJson(Map<String, dynamic> json) =>
    _$EstacaoModelImpl(
      id: (json['id'] as num?)?.toInt(),
      nome: json['nome'] as String?,
      descricao: json['descricao'] as String?,
      items: (json['celula_item'] as List<dynamic>?)
          ?.map((e) => EstacaoModelItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$EstacaoModelImplToJson(_$EstacaoModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nome': instance.nome,
      'descricao': instance.descricao,
      'celula_item': instance.items,
    };
