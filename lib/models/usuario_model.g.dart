// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usuario_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UsuarioModelAdapter extends TypeAdapter<_$UsuarioModelImpl> {
  @override
  final int typeId = 13;

  @override
  _$UsuarioModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$UsuarioModelImpl(
      id: fields[0] as int?,
      nome: fields[1] as String?,
      username: fields[2] as String?,
      email: fields[3] as String?,
      cpf: fields[4] as String?,
      dataNascimento: fields[5] as DateTime?,
      nomePai: fields[6] as String?,
      nomeMae: fields[7] as String?,
      telefone: fields[8] as TelefoneModel?,
      endereco: fields[9] as EnderecoModel?,
      cliente: fields[10] as ClienteModel?,
      sexo: fields[11] as SexoModel?,
      createdAt: fields[12] as DateTime?,
      updatedAt: fields[13] as DateTime?,
      isSecure: fields[14] as bool?,
      isRoot: fields[15] as bool?,
      administrador: fields[16] as AdministradorInfoModel?,
      pedagogaFagundez: fields[17] as PedagogaFagundezInfoModel?,
      masterCliente: fields[18] as MasterClienteInfoModel?,
      diretor: fields[19] as DiretorInfoModel?,
      secretaria: fields[20] as SecretariaInfoModel?,
      pedagoga: fields[21] as PedagogaInfoModel?,
      professor: fields[22] as ProfessorInfoModel?,
      aluno: fields[23] as AlunoInfoModel?,
    );
  }

  @override
  void write(BinaryWriter writer, _$UsuarioModelImpl obj) {
    writer
      ..writeByte(24)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.nome)
      ..writeByte(2)
      ..write(obj.username)
      ..writeByte(3)
      ..write(obj.email)
      ..writeByte(4)
      ..write(obj.cpf)
      ..writeByte(5)
      ..write(obj.dataNascimento)
      ..writeByte(6)
      ..write(obj.nomePai)
      ..writeByte(7)
      ..write(obj.nomeMae)
      ..writeByte(8)
      ..write(obj.telefone)
      ..writeByte(9)
      ..write(obj.endereco)
      ..writeByte(10)
      ..write(obj.cliente)
      ..writeByte(11)
      ..write(obj.sexo)
      ..writeByte(12)
      ..write(obj.createdAt)
      ..writeByte(13)
      ..write(obj.updatedAt)
      ..writeByte(14)
      ..write(obj.isSecure)
      ..writeByte(15)
      ..write(obj.isRoot)
      ..writeByte(16)
      ..write(obj.administrador)
      ..writeByte(17)
      ..write(obj.pedagogaFagundez)
      ..writeByte(18)
      ..write(obj.masterCliente)
      ..writeByte(19)
      ..write(obj.diretor)
      ..writeByte(20)
      ..write(obj.secretaria)
      ..writeByte(21)
      ..write(obj.pedagoga)
      ..writeByte(22)
      ..write(obj.professor)
      ..writeByte(23)
      ..write(obj.aluno);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UsuarioModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UsuarioModelImpl _$$UsuarioModelImplFromJson(Map<String, dynamic> json) =>
    _$UsuarioModelImpl(
      id: (json['id'] as num?)?.toInt(),
      nome: json['nome'] as String?,
      username: json['username'] as String?,
      email: json['email'] as String?,
      cpf: json['cpf'] as String?,
      dataNascimento: const DateTimeAdapter().fromJson(json['data_nascimento']),
      nomePai: json['nome_pai'] as String?,
      nomeMae: json['nome_mae'] as String?,
      telefone: json['telefone'] == null
          ? null
          : TelefoneModel.fromJson(json['telefone'] as Map<String, dynamic>),
      endereco: json['endereco'] == null
          ? null
          : EnderecoModel.fromJson(json['endereco'] as Map<String, dynamic>),
      cliente: json['cliente'] == null
          ? null
          : ClienteModel.fromJson(json['cliente'] as Map<String, dynamic>),
      sexo: const SexoConverter().fromJson(json['sexo']),
      createdAt: const DateTimeAdapter().fromJson(json['created_at']),
      updatedAt: const DateTimeAdapter().fromJson(json['updated_at']),
      isSecure: json['is_secure'] as bool?,
      isRoot: json['is_root'] as bool?,
      administrador: json['administrador'] == null
          ? null
          : AdministradorInfoModel.fromJson(
              json['administrador'] as Map<String, dynamic>),
      pedagogaFagundez: json['pedagoga_fagundez'] == null
          ? null
          : PedagogaFagundezInfoModel.fromJson(
              json['pedagoga_fagundez'] as Map<String, dynamic>),
      masterCliente: json['master_cliente'] == null
          ? null
          : MasterClienteInfoModel.fromJson(
              json['master_cliente'] as Map<String, dynamic>),
      diretor: json['diretor'] == null
          ? null
          : DiretorInfoModel.fromJson(json['diretor'] as Map<String, dynamic>),
      secretaria: json['secretaria'] == null
          ? null
          : SecretariaInfoModel.fromJson(
              json['secretaria'] as Map<String, dynamic>),
      pedagoga: json['pedagoga'] == null
          ? null
          : PedagogaInfoModel.fromJson(
              json['pedagoga'] as Map<String, dynamic>),
      professor: json['professor'] == null
          ? null
          : ProfessorInfoModel.fromJson(
              json['professor'] as Map<String, dynamic>),
      aluno: json['aluno'] == null
          ? null
          : AlunoInfoModel.fromJson(json['aluno'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UsuarioModelImplToJson(_$UsuarioModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nome': instance.nome,
      'username': instance.username,
      'email': instance.email,
      'cpf': instance.cpf,
      'data_nascimento':
          const DateTimeAdapter().toJson(instance.dataNascimento),
      'nome_pai': instance.nomePai,
      'nome_mae': instance.nomeMae,
      'telefone': instance.telefone,
      'endereco': instance.endereco,
      'cliente': instance.cliente,
      'sexo': const SexoConverter().toJson(instance.sexo),
      'created_at': const DateTimeAdapter().toJson(instance.createdAt),
      'updated_at': const DateTimeAdapter().toJson(instance.updatedAt),
      'is_secure': instance.isSecure,
      'is_root': instance.isRoot,
      'administrador': instance.administrador,
      'pedagoga_fagundez': instance.pedagogaFagundez,
      'master_cliente': instance.masterCliente,
      'diretor': instance.diretor,
      'secretaria': instance.secretaria,
      'pedagoga': instance.pedagoga,
      'professor': instance.professor,
      'aluno': instance.aluno,
    };
