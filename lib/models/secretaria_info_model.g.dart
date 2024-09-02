// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'secretaria_info_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SecretariaInfoAdapter extends TypeAdapter<_$SecretariaInfoModelImpl> {
  @override
  final int typeId = 70;

  @override
  _$SecretariaInfoModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$SecretariaInfoModelImpl();
  }

  @override
  void write(BinaryWriter writer, _$SecretariaInfoModelImpl obj) {
    writer.writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SecretariaInfoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SecretariaInfoModelImpl _$$SecretariaInfoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SecretariaInfoModelImpl(
      id: (json['id'] as num?)?.toInt(),
      unidade: json['unidade'] == null
          ? null
          : UnidadeModel.fromJson(json['unidade'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SecretariaInfoModelImplToJson(
        _$SecretariaInfoModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'unidade': instance.unidade,
    };
