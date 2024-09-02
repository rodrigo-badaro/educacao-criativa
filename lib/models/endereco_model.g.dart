// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'endereco_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class EnderecoAdapter extends TypeAdapter<_$EnderecoModelImpl> {
  @override
  final int typeId = 5;

  @override
  _$EnderecoModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$EnderecoModelImpl(
      id: fields[0] as int?,
      cep: fields[1] as String?,
      rua: fields[2] as String?,
      numero: fields[3] as String?,
      complemento: fields[4] as String?,
      uf: fields[5] as String?,
      municipio: fields[6] as String?,
      bairro: fields[7] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$EnderecoModelImpl obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.cep)
      ..writeByte(2)
      ..write(obj.rua)
      ..writeByte(3)
      ..write(obj.numero)
      ..writeByte(4)
      ..write(obj.complemento)
      ..writeByte(5)
      ..write(obj.uf)
      ..writeByte(6)
      ..write(obj.municipio)
      ..writeByte(7)
      ..write(obj.bairro);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EnderecoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EnderecoModelImpl _$$EnderecoModelImplFromJson(Map<String, dynamic> json) =>
    _$EnderecoModelImpl(
      id: (json['id'] as num?)?.toInt(),
      cep: json['cep'] as String?,
      rua: json['rua'] as String?,
      numero: json['numero'] as String?,
      complemento: json['complemento'] as String?,
      uf: json['uf'] as String?,
      municipio: json['municipio'] as String?,
      bairro: json['bairro'] as String?,
    );

Map<String, dynamic> _$$EnderecoModelImplToJson(_$EnderecoModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cep': instance.cep,
      'rua': instance.rua,
      'numero': instance.numero,
      'complemento': instance.complemento,
      'uf': instance.uf,
      'municipio': instance.municipio,
      'bairro': instance.bairro,
    };
