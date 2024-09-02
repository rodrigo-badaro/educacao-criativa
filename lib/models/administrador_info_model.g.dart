// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'administrador_info_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AdministradorInfoAdapter
    extends TypeAdapter<_$AdministradorInfoModelImpl> {
  @override
  final int typeId = 66;

  @override
  _$AdministradorInfoModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$AdministradorInfoModelImpl();
  }

  @override
  void write(BinaryWriter writer, _$AdministradorInfoModelImpl obj) {
    writer.writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AdministradorInfoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdministradorInfoModelImpl _$$AdministradorInfoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AdministradorInfoModelImpl(
      id: (json['id'] as num?)?.toInt(),
      clientes: (json['clientes'] as List<dynamic>?)
          ?.map((e) => ClienteModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AdministradorInfoModelImplToJson(
        _$AdministradorInfoModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'clientes': instance.clientes,
    };
