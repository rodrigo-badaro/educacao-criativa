// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aluno_info_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AlunoInfoAdapter extends TypeAdapter<_$AlunoInfoModelImpl> {
  @override
  final int typeId = 73;

  @override
  _$AlunoInfoModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$AlunoInfoModelImpl();
  }

  @override
  void write(BinaryWriter writer, _$AlunoInfoModelImpl obj) {
    writer.writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AlunoInfoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AlunoInfoModelImpl _$$AlunoInfoModelImplFromJson(Map<String, dynamic> json) =>
    _$AlunoInfoModelImpl(
      id: (json['id'] as num?)?.toInt(),
      matricula: json['matricula'] as String?,
      dataMatricula: const DateTimeAdapter().fromJson(json['data_matricula']),
      unidade: json['unidade'] == null
          ? null
          : UnidadeModel.fromJson(json['unidade'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AlunoInfoModelImplToJson(
        _$AlunoInfoModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'matricula': instance.matricula,
      'data_matricula': const DateTimeAdapter().toJson(instance.dataMatricula),
      'unidade': instance.unidade,
    };
