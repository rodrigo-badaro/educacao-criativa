// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'professor_info_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProfessorInfoAdapter extends TypeAdapter<_$ProfessorInfoModelImpl> {
  @override
  final int typeId = 71;

  @override
  _$ProfessorInfoModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$ProfessorInfoModelImpl();
  }

  @override
  void write(BinaryWriter writer, _$ProfessorInfoModelImpl obj) {
    writer.writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProfessorInfoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfessorInfoModelImpl _$$ProfessorInfoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfessorInfoModelImpl(
      unidades: (json['unidades'] as List<dynamic>?)
          ?.map((e) => UnidadeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      matricula: json['matricula'] as String?,
    );

Map<String, dynamic> _$$ProfessorInfoModelImplToJson(
        _$ProfessorInfoModelImpl instance) =>
    <String, dynamic>{
      'unidades': instance.unidades,
      'matricula': instance.matricula,
    };
