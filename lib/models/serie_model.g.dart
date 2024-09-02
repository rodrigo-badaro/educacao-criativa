// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serie_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SerieModelAdapter extends TypeAdapter<_$SerieModelImpl> {
  @override
  final int typeId = 10;

  @override
  _$SerieModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$SerieModelImpl(
      id: fields[0] as int?,
      nome: fields[1] as String?,
      numero: fields[2] as int?,
      modalidade: fields[3] as ModalidadeModel?,
      codigoBNCC: fields[4] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$SerieModelImpl obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.nome)
      ..writeByte(2)
      ..write(obj.numero)
      ..writeByte(3)
      ..write(obj.modalidade)
      ..writeByte(4)
      ..write(obj.codigoBNCC);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SerieModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SerieModelImpl _$$SerieModelImplFromJson(Map<String, dynamic> json) =>
    _$SerieModelImpl(
      id: (json['id'] as num?)?.toInt(),
      nome: json['nome'] as String?,
      numero: (json['numero'] as num?)?.toInt(),
      modalidade: json['modalidade'] == null
          ? null
          : ModalidadeModel.fromJson(
              json['modalidade'] as Map<String, dynamic>),
      codigoBNCC: json['codigo_bncc'] as String?,
    );

Map<String, dynamic> _$$SerieModelImplToJson(_$SerieModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nome': instance.nome,
      'numero': instance.numero,
      'modalidade': instance.modalidade,
      'codigo_bncc': instance.codigoBNCC,
    };
