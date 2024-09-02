// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ClienteAdapter extends TypeAdapter<_$ClienteModelImpl> {
  @override
  final int typeId = 2;

  @override
  _$ClienteModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$ClienteModelImpl(
      id: fields[0] as int?,
      nome: fields[1] as String?,
      descricao: fields[2] as String?,
      sigla: fields[3] as String?,
      nomeResponsavel: fields[4] as String?,
      cpf: fields[5] as String?,
      email: fields[6] as String?,
      telefone: fields[7] as TelefoneModel?,
    );
  }

  @override
  void write(BinaryWriter writer, _$ClienteModelImpl obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.nome)
      ..writeByte(2)
      ..write(obj.descricao)
      ..writeByte(3)
      ..write(obj.sigla)
      ..writeByte(4)
      ..write(obj.nomeResponsavel)
      ..writeByte(5)
      ..write(obj.cpf)
      ..writeByte(6)
      ..write(obj.email)
      ..writeByte(7)
      ..write(obj.telefone);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ClienteAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClienteModelImpl _$$ClienteModelImplFromJson(Map<String, dynamic> json) =>
    _$ClienteModelImpl(
      id: (json['id'] as num?)?.toInt(),
      nome: json['nome'] as String?,
      descricao: json['descricao'] as String?,
      sigla: json['sigla'] as String?,
      nomeResponsavel: json['nome_responsavel'] as String?,
      cpf: json['cpf'] as String?,
      email: json['email'] as String?,
      telefone: json['telefone'] == null
          ? null
          : TelefoneModel.fromJson(json['telefone'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ClienteModelImplToJson(_$ClienteModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nome': instance.nome,
      'descricao': instance.descricao,
      'sigla': instance.sigla,
      'nome_responsavel': instance.nomeResponsavel,
      'cpf': instance.cpf,
      'email': instance.email,
      'telefone': instance.telefone,
    };
