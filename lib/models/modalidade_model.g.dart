// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modalidade_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ModalidadeModelAdapter extends TypeAdapter<_$ModalidadeModelImpl> {
  @override
  final int typeId = 7;

  @override
  _$ModalidadeModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$ModalidadeModelImpl(
      id: fields[0] as int?,
      nome: fields[1] as String?,
      descricao: fields[2] as String?,
      sigla: fields[3] as String?,
      codigoBNCC: fields[4] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$ModalidadeModelImpl obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.nome)
      ..writeByte(2)
      ..write(obj.descricao)
      ..writeByte(3)
      ..write(obj.sigla)
      ..writeByte(4)
      ..write(obj.codigoBNCC);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ModalidadeModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ModalidadeModelImpl _$$ModalidadeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ModalidadeModelImpl(
      id: (json['id'] as num?)?.toInt(),
      nome: json['nome'] as String?,
      descricao: json['descricao'] as String?,
      sigla: json['sigla'] as String?,
      codigoBNCC: json['codigo_bncc'] as String?,
    );

Map<String, dynamic> _$$ModalidadeModelImplToJson(
        _$ModalidadeModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nome': instance.nome,
      'descricao': instance.descricao,
      'sigla': instance.sigla,
      'codigo_bncc': instance.codigoBNCC,
    };
