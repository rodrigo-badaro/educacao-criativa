// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pedagoga_info_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PedagogaInfoAdapter extends TypeAdapter<_$PedagogaInfoModelImpl> {
  @override
  final int typeId = 72;

  @override
  _$PedagogaInfoModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$PedagogaInfoModelImpl();
  }

  @override
  void write(BinaryWriter writer, _$PedagogaInfoModelImpl obj) {
    writer.writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PedagogaInfoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PedagogaInfoModelImpl _$$PedagogaInfoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PedagogaInfoModelImpl(
      id: (json['id'] as num?)?.toInt(),
      unidades: (json['unidades'] as List<dynamic>?)
          ?.map((e) => UnidadeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PedagogaInfoModelImplToJson(
        _$PedagogaInfoModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'unidades': instance.unidades,
    };
