// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tipo_de_unidade_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TipoDeUnidadeModelAdapter extends TypeAdapter<_$TipoDeUnidadeModelImpl> {
  @override
  final int typeId = 15;

  @override
  _$TipoDeUnidadeModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$TipoDeUnidadeModelImpl(
      id: fields[0] as int?,
      nome: fields[1] as String?,
      descricao: fields[2] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$TipoDeUnidadeModelImpl obj) {
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
      other is TipoDeUnidadeModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TipoDeUnidadeModelImpl _$$TipoDeUnidadeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TipoDeUnidadeModelImpl(
      id: (json['id'] as num?)?.toInt(),
      nome: json['nome'] as String?,
      descricao: json['descricao'] as String?,
    );

Map<String, dynamic> _$$TipoDeUnidadeModelImplToJson(
        _$TipoDeUnidadeModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nome': instance.nome,
      'descricao': instance.descricao,
    };
