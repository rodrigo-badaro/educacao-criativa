// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'espaco_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class EspacoModelAdapter extends TypeAdapter<_$EspacoModelImpl> {
  @override
  final int typeId = 36;

  @override
  _$EspacoModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$EspacoModelImpl(
      id: fields[0] as int?,
      nome: fields[1] as String?,
      restrito: fields[2] as bool?,
      unidade: fields[3] as UnidadeModel?,
      usuario: fields[4] as UsuarioModel?,
      celulas: (fields[5] as List?)?.cast<EstacaoModel>(),
      unidadesExternas: (fields[6] as List?)?.cast<UnidadeModel>(),
      createdAt: fields[7] as DateTime?,
      updatedAt: fields[8] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, _$EspacoModelImpl obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.nome)
      ..writeByte(2)
      ..write(obj.restrito)
      ..writeByte(3)
      ..write(obj.unidade)
      ..writeByte(4)
      ..write(obj.usuario)
      ..writeByte(7)
      ..write(obj.createdAt)
      ..writeByte(8)
      ..write(obj.updatedAt)
      ..writeByte(5)
      ..write(obj.celulas)
      ..writeByte(6)
      ..write(obj.unidadesExternas);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EspacoModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EspacoModelImpl _$$EspacoModelImplFromJson(Map<String, dynamic> json) =>
    _$EspacoModelImpl(
      id: (json['id'] as num?)?.toInt(),
      nome: json['nome'] as String?,
      restrito: json['restrito'] as bool?,
      unidade: json['unidade'] == null
          ? null
          : UnidadeModel.fromJson(json['unidade'] as Map<String, dynamic>),
      usuario: json['usuario'] == null
          ? null
          : UsuarioModel.fromJson(json['usuario'] as Map<String, dynamic>),
      celulas: (json['celulas'] as List<dynamic>?)
          ?.map((e) => EstacaoModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      unidadesExternas: (json['unidades_externas'] as List<dynamic>?)
          ?.map((e) => UnidadeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: const DateTimeAdapter().fromJson(json['created_at']),
      updatedAt: const DateTimeAdapter().fromJson(json['updated_at']),
    );

Map<String, dynamic> _$$EspacoModelImplToJson(_$EspacoModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nome': instance.nome,
      'restrito': instance.restrito,
      'unidade': instance.unidade,
      'usuario': instance.usuario,
      'celulas': instance.celulas,
      'unidades_externas': instance.unidadesExternas,
      'created_at': const DateTimeAdapter().toJson(instance.createdAt),
      'updated_at': const DateTimeAdapter().toJson(instance.updatedAt),
    };
