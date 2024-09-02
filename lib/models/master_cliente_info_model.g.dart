// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'master_cliente_info_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MasterClienteInfoAdapter
    extends TypeAdapter<_$MasterClienteInfoModelImpl> {
  @override
  final int typeId = 68;

  @override
  _$MasterClienteInfoModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$MasterClienteInfoModelImpl();
  }

  @override
  void write(BinaryWriter writer, _$MasterClienteInfoModelImpl obj) {
    writer.writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MasterClienteInfoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MasterClienteInfoModelImpl _$$MasterClienteInfoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MasterClienteInfoModelImpl(
      id: (json['id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$MasterClienteInfoModelImplToJson(
        _$MasterClienteInfoModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };
