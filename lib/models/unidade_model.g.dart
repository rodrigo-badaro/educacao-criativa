// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unidade_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UnidadeAdapter extends TypeAdapter<_$UnidadeModelImpl> {
  @override
  final int typeId = 12;

  @override
  _$UnidadeModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$UnidadeModelImpl(
      id: fields[0] as int?,
      nome: fields[1] as String?,
      dataInauguracao: fields[2] as DateTime?,
      cliente: fields[3] as ClienteModel?,
      viceDiretor: fields[4] as String?,
      endereco: fields[5] as EnderecoModel?,
      tipoDeUnidade: fields[6] as TipoDeUnidadeModel?,
      diretor: fields[7] as UsuarioModel?,
    );
  }

  @override
  void write(BinaryWriter writer, _$UnidadeModelImpl obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.nome)
      ..writeByte(2)
      ..write(obj.dataInauguracao)
      ..writeByte(3)
      ..write(obj.cliente)
      ..writeByte(4)
      ..write(obj.viceDiretor)
      ..writeByte(5)
      ..write(obj.endereco)
      ..writeByte(6)
      ..write(obj.tipoDeUnidade)
      ..writeByte(7)
      ..write(obj.diretor);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UnidadeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UnidadeModelImpl _$$UnidadeModelImplFromJson(Map<String, dynamic> json) =>
    _$UnidadeModelImpl(
      id: (json['id'] as num?)?.toInt(),
      nome: json['nome'] as String?,
      dataInauguracao:
          const DateTimeAdapter().fromJson(json['data_inauguracao']),
      cliente: json['cliente'] == null
          ? null
          : ClienteModel.fromJson(json['cliente'] as Map<String, dynamic>),
      viceDiretor: json['vice_diretor'] as String?,
      endereco: json['endereco'] == null
          ? null
          : EnderecoModel.fromJson(json['endereco'] as Map<String, dynamic>),
      tipoDeUnidade: json['tipo_unidade'] == null
          ? null
          : TipoDeUnidadeModel.fromJson(
              json['tipo_unidade'] as Map<String, dynamic>),
      diretor: json['usuario_diretor'] == null
          ? null
          : UsuarioModel.fromJson(
              json['usuario_diretor'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UnidadeModelImplToJson(_$UnidadeModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nome': instance.nome,
      'data_inauguracao':
          const DateTimeAdapter().toJson(instance.dataInauguracao),
      'cliente': instance.cliente,
      'vice_diretor': instance.viceDiretor,
      'endereco': instance.endereco,
      'tipo_unidade': instance.tipoDeUnidade,
      'usuario_diretor': instance.diretor,
    };
