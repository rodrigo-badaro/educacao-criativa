// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pedagoga_fagundez_info_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PedagogaFagundezInfoAdapter
    extends TypeAdapter<_$PedagogaFagundezInfoModelImpl> {
  @override
  final int typeId = 67;

  @override
  _$PedagogaFagundezInfoModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$PedagogaFagundezInfoModelImpl();
  }

  @override
  void write(BinaryWriter writer, _$PedagogaFagundezInfoModelImpl obj) {
    writer.writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PedagogaFagundezInfoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PedagogaFagundezInfoModelImpl _$$PedagogaFagundezInfoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PedagogaFagundezInfoModelImpl(
      id: (json['id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PedagogaFagundezInfoModelImplToJson(
        _$PedagogaFagundezInfoModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };
