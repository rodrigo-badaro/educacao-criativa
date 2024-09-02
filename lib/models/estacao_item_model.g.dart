// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'estacao_item_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class EstacaoItemModelAdapter extends TypeAdapter<_$EstacaoModelItemImpl> {
  @override
  final int typeId = 17;

  @override
  _$EstacaoModelItemImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$EstacaoModelItemImpl(
      item: fields[1] as ItemModel?,
      quantidade: fields[2] as int?,
      quantidadeAviso: fields[3] as int?,
      quantidadeMinima: fields[4] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, _$EstacaoModelItemImpl obj) {
    writer
      ..writeByte(4)
      ..writeByte(1)
      ..write(obj.item)
      ..writeByte(2)
      ..write(obj.quantidade)
      ..writeByte(3)
      ..write(obj.quantidadeAviso)
      ..writeByte(4)
      ..write(obj.quantidadeMinima);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EstacaoItemModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EstacaoModelItemImpl _$$EstacaoModelItemImplFromJson(
        Map<String, dynamic> json) =>
    _$EstacaoModelItemImpl(
      item: json['item'] == null
          ? null
          : ItemModel.fromJson(json['item'] as Map<String, dynamic>),
      quantidade: (json['quantidade'] as num?)?.toInt(),
      quantidadeAviso: (json['quantidade_aviso'] as num?)?.toInt(),
      quantidadeMinima: (json['quantidade_minima'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$EstacaoModelItemImplToJson(
        _$EstacaoModelItemImpl instance) =>
    <String, dynamic>{
      'item': instance.item,
      'quantidade': instance.quantidade,
      'quantidade_aviso': instance.quantidadeAviso,
      'quantidade_minima': instance.quantidadeMinima,
    };
