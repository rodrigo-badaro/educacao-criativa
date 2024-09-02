// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'usuario_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UsuarioModel _$UsuarioModelFromJson(Map<String, dynamic> json) {
  return _UsuarioModel.fromJson(json);
}

/// @nodoc
mixin _$UsuarioModel {
  @HiveField(0)
  int? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get nome => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get username => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get email => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get cpf => throw _privateConstructorUsedError;
  @HiveField(5)
  @DateTimeAdapter()
  @JsonKey(name: 'data_nascimento')
  DateTime? get dataNascimento => throw _privateConstructorUsedError;
  @HiveField(6)
  @JsonKey(name: 'nome_pai')
  String? get nomePai => throw _privateConstructorUsedError;
  @HiveField(7)
  @JsonKey(name: 'nome_mae')
  String? get nomeMae => throw _privateConstructorUsedError;
  @HiveField(8)
  TelefoneModel? get telefone => throw _privateConstructorUsedError;
  @HiveField(9)
  EnderecoModel? get endereco => throw _privateConstructorUsedError;
  @HiveField(10)
  ClienteModel? get cliente => throw _privateConstructorUsedError;
  @HiveField(11)
  @SexoConverter()
  SexoModel? get sexo => throw _privateConstructorUsedError;
  @DateTimeAdapter()
  @HiveField(12)
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @DateTimeAdapter()
  @HiveField(13)
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @HiveField(14)
  @JsonKey(name: 'is_secure')
  bool? get isSecure => throw _privateConstructorUsedError;
  @HiveField(15)
  @JsonKey(name: 'is_root')
  bool? get isRoot => throw _privateConstructorUsedError;
  @HiveField(16)
  AdministradorInfoModel? get administrador =>
      throw _privateConstructorUsedError;
  @HiveField(17)
  @JsonKey(name: 'pedagoga_fagundez')
  PedagogaFagundezInfoModel? get pedagogaFagundez =>
      throw _privateConstructorUsedError;
  @HiveField(18)
  @JsonKey(name: 'master_cliente')
  MasterClienteInfoModel? get masterCliente =>
      throw _privateConstructorUsedError;
  @HiveField(19)
  DiretorInfoModel? get diretor => throw _privateConstructorUsedError;
  @HiveField(20)
  SecretariaInfoModel? get secretaria => throw _privateConstructorUsedError;
  @HiveField(21)
  PedagogaInfoModel? get pedagoga => throw _privateConstructorUsedError;
  @HiveField(22)
  ProfessorInfoModel? get professor => throw _privateConstructorUsedError;
  @HiveField(23)
  AlunoInfoModel? get aluno => throw _privateConstructorUsedError;

  /// Serializes this UsuarioModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UsuarioModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UsuarioModelCopyWith<UsuarioModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsuarioModelCopyWith<$Res> {
  factory $UsuarioModelCopyWith(
          UsuarioModel value, $Res Function(UsuarioModel) then) =
      _$UsuarioModelCopyWithImpl<$Res, UsuarioModel>;
  @useResult
  $Res call(
      {@HiveField(0) int? id,
      @HiveField(1) String? nome,
      @HiveField(2) String? username,
      @HiveField(3) String? email,
      @HiveField(4) String? cpf,
      @HiveField(5)
      @DateTimeAdapter()
      @JsonKey(name: 'data_nascimento')
      DateTime? dataNascimento,
      @HiveField(6) @JsonKey(name: 'nome_pai') String? nomePai,
      @HiveField(7) @JsonKey(name: 'nome_mae') String? nomeMae,
      @HiveField(8) TelefoneModel? telefone,
      @HiveField(9) EnderecoModel? endereco,
      @HiveField(10) ClienteModel? cliente,
      @HiveField(11) @SexoConverter() SexoModel? sexo,
      @DateTimeAdapter()
      @HiveField(12)
      @JsonKey(name: 'created_at')
      DateTime? createdAt,
      @DateTimeAdapter()
      @HiveField(13)
      @JsonKey(name: 'updated_at')
      DateTime? updatedAt,
      @HiveField(14) @JsonKey(name: 'is_secure') bool? isSecure,
      @HiveField(15) @JsonKey(name: 'is_root') bool? isRoot,
      @HiveField(16) AdministradorInfoModel? administrador,
      @HiveField(17)
      @JsonKey(name: 'pedagoga_fagundez')
      PedagogaFagundezInfoModel? pedagogaFagundez,
      @HiveField(18)
      @JsonKey(name: 'master_cliente')
      MasterClienteInfoModel? masterCliente,
      @HiveField(19) DiretorInfoModel? diretor,
      @HiveField(20) SecretariaInfoModel? secretaria,
      @HiveField(21) PedagogaInfoModel? pedagoga,
      @HiveField(22) ProfessorInfoModel? professor,
      @HiveField(23) AlunoInfoModel? aluno});

  $TelefoneModelCopyWith<$Res>? get telefone;
  $EnderecoModelCopyWith<$Res>? get endereco;
  $ClienteModelCopyWith<$Res>? get cliente;
  $AdministradorInfoModelCopyWith<$Res>? get administrador;
  $PedagogaFagundezInfoModelCopyWith<$Res>? get pedagogaFagundez;
  $MasterClienteInfoModelCopyWith<$Res>? get masterCliente;
  $DiretorInfoModelCopyWith<$Res>? get diretor;
  $SecretariaInfoModelCopyWith<$Res>? get secretaria;
  $PedagogaInfoModelCopyWith<$Res>? get pedagoga;
  $ProfessorInfoModelCopyWith<$Res>? get professor;
  $AlunoInfoModelCopyWith<$Res>? get aluno;
}

/// @nodoc
class _$UsuarioModelCopyWithImpl<$Res, $Val extends UsuarioModel>
    implements $UsuarioModelCopyWith<$Res> {
  _$UsuarioModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UsuarioModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nome = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? cpf = freezed,
    Object? dataNascimento = freezed,
    Object? nomePai = freezed,
    Object? nomeMae = freezed,
    Object? telefone = freezed,
    Object? endereco = freezed,
    Object? cliente = freezed,
    Object? sexo = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? isSecure = freezed,
    Object? isRoot = freezed,
    Object? administrador = freezed,
    Object? pedagogaFagundez = freezed,
    Object? masterCliente = freezed,
    Object? diretor = freezed,
    Object? secretaria = freezed,
    Object? pedagoga = freezed,
    Object? professor = freezed,
    Object? aluno = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      nome: freezed == nome
          ? _value.nome
          : nome // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      cpf: freezed == cpf
          ? _value.cpf
          : cpf // ignore: cast_nullable_to_non_nullable
              as String?,
      dataNascimento: freezed == dataNascimento
          ? _value.dataNascimento
          : dataNascimento // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      nomePai: freezed == nomePai
          ? _value.nomePai
          : nomePai // ignore: cast_nullable_to_non_nullable
              as String?,
      nomeMae: freezed == nomeMae
          ? _value.nomeMae
          : nomeMae // ignore: cast_nullable_to_non_nullable
              as String?,
      telefone: freezed == telefone
          ? _value.telefone
          : telefone // ignore: cast_nullable_to_non_nullable
              as TelefoneModel?,
      endereco: freezed == endereco
          ? _value.endereco
          : endereco // ignore: cast_nullable_to_non_nullable
              as EnderecoModel?,
      cliente: freezed == cliente
          ? _value.cliente
          : cliente // ignore: cast_nullable_to_non_nullable
              as ClienteModel?,
      sexo: freezed == sexo
          ? _value.sexo
          : sexo // ignore: cast_nullable_to_non_nullable
              as SexoModel?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isSecure: freezed == isSecure
          ? _value.isSecure
          : isSecure // ignore: cast_nullable_to_non_nullable
              as bool?,
      isRoot: freezed == isRoot
          ? _value.isRoot
          : isRoot // ignore: cast_nullable_to_non_nullable
              as bool?,
      administrador: freezed == administrador
          ? _value.administrador
          : administrador // ignore: cast_nullable_to_non_nullable
              as AdministradorInfoModel?,
      pedagogaFagundez: freezed == pedagogaFagundez
          ? _value.pedagogaFagundez
          : pedagogaFagundez // ignore: cast_nullable_to_non_nullable
              as PedagogaFagundezInfoModel?,
      masterCliente: freezed == masterCliente
          ? _value.masterCliente
          : masterCliente // ignore: cast_nullable_to_non_nullable
              as MasterClienteInfoModel?,
      diretor: freezed == diretor
          ? _value.diretor
          : diretor // ignore: cast_nullable_to_non_nullable
              as DiretorInfoModel?,
      secretaria: freezed == secretaria
          ? _value.secretaria
          : secretaria // ignore: cast_nullable_to_non_nullable
              as SecretariaInfoModel?,
      pedagoga: freezed == pedagoga
          ? _value.pedagoga
          : pedagoga // ignore: cast_nullable_to_non_nullable
              as PedagogaInfoModel?,
      professor: freezed == professor
          ? _value.professor
          : professor // ignore: cast_nullable_to_non_nullable
              as ProfessorInfoModel?,
      aluno: freezed == aluno
          ? _value.aluno
          : aluno // ignore: cast_nullable_to_non_nullable
              as AlunoInfoModel?,
    ) as $Val);
  }

  /// Create a copy of UsuarioModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TelefoneModelCopyWith<$Res>? get telefone {
    if (_value.telefone == null) {
      return null;
    }

    return $TelefoneModelCopyWith<$Res>(_value.telefone!, (value) {
      return _then(_value.copyWith(telefone: value) as $Val);
    });
  }

  /// Create a copy of UsuarioModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EnderecoModelCopyWith<$Res>? get endereco {
    if (_value.endereco == null) {
      return null;
    }

    return $EnderecoModelCopyWith<$Res>(_value.endereco!, (value) {
      return _then(_value.copyWith(endereco: value) as $Val);
    });
  }

  /// Create a copy of UsuarioModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClienteModelCopyWith<$Res>? get cliente {
    if (_value.cliente == null) {
      return null;
    }

    return $ClienteModelCopyWith<$Res>(_value.cliente!, (value) {
      return _then(_value.copyWith(cliente: value) as $Val);
    });
  }

  /// Create a copy of UsuarioModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AdministradorInfoModelCopyWith<$Res>? get administrador {
    if (_value.administrador == null) {
      return null;
    }

    return $AdministradorInfoModelCopyWith<$Res>(_value.administrador!,
        (value) {
      return _then(_value.copyWith(administrador: value) as $Val);
    });
  }

  /// Create a copy of UsuarioModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PedagogaFagundezInfoModelCopyWith<$Res>? get pedagogaFagundez {
    if (_value.pedagogaFagundez == null) {
      return null;
    }

    return $PedagogaFagundezInfoModelCopyWith<$Res>(_value.pedagogaFagundez!,
        (value) {
      return _then(_value.copyWith(pedagogaFagundez: value) as $Val);
    });
  }

  /// Create a copy of UsuarioModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MasterClienteInfoModelCopyWith<$Res>? get masterCliente {
    if (_value.masterCliente == null) {
      return null;
    }

    return $MasterClienteInfoModelCopyWith<$Res>(_value.masterCliente!,
        (value) {
      return _then(_value.copyWith(masterCliente: value) as $Val);
    });
  }

  /// Create a copy of UsuarioModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DiretorInfoModelCopyWith<$Res>? get diretor {
    if (_value.diretor == null) {
      return null;
    }

    return $DiretorInfoModelCopyWith<$Res>(_value.diretor!, (value) {
      return _then(_value.copyWith(diretor: value) as $Val);
    });
  }

  /// Create a copy of UsuarioModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SecretariaInfoModelCopyWith<$Res>? get secretaria {
    if (_value.secretaria == null) {
      return null;
    }

    return $SecretariaInfoModelCopyWith<$Res>(_value.secretaria!, (value) {
      return _then(_value.copyWith(secretaria: value) as $Val);
    });
  }

  /// Create a copy of UsuarioModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PedagogaInfoModelCopyWith<$Res>? get pedagoga {
    if (_value.pedagoga == null) {
      return null;
    }

    return $PedagogaInfoModelCopyWith<$Res>(_value.pedagoga!, (value) {
      return _then(_value.copyWith(pedagoga: value) as $Val);
    });
  }

  /// Create a copy of UsuarioModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfessorInfoModelCopyWith<$Res>? get professor {
    if (_value.professor == null) {
      return null;
    }

    return $ProfessorInfoModelCopyWith<$Res>(_value.professor!, (value) {
      return _then(_value.copyWith(professor: value) as $Val);
    });
  }

  /// Create a copy of UsuarioModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AlunoInfoModelCopyWith<$Res>? get aluno {
    if (_value.aluno == null) {
      return null;
    }

    return $AlunoInfoModelCopyWith<$Res>(_value.aluno!, (value) {
      return _then(_value.copyWith(aluno: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UsuarioModelImplCopyWith<$Res>
    implements $UsuarioModelCopyWith<$Res> {
  factory _$$UsuarioModelImplCopyWith(
          _$UsuarioModelImpl value, $Res Function(_$UsuarioModelImpl) then) =
      __$$UsuarioModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int? id,
      @HiveField(1) String? nome,
      @HiveField(2) String? username,
      @HiveField(3) String? email,
      @HiveField(4) String? cpf,
      @HiveField(5)
      @DateTimeAdapter()
      @JsonKey(name: 'data_nascimento')
      DateTime? dataNascimento,
      @HiveField(6) @JsonKey(name: 'nome_pai') String? nomePai,
      @HiveField(7) @JsonKey(name: 'nome_mae') String? nomeMae,
      @HiveField(8) TelefoneModel? telefone,
      @HiveField(9) EnderecoModel? endereco,
      @HiveField(10) ClienteModel? cliente,
      @HiveField(11) @SexoConverter() SexoModel? sexo,
      @DateTimeAdapter()
      @HiveField(12)
      @JsonKey(name: 'created_at')
      DateTime? createdAt,
      @DateTimeAdapter()
      @HiveField(13)
      @JsonKey(name: 'updated_at')
      DateTime? updatedAt,
      @HiveField(14) @JsonKey(name: 'is_secure') bool? isSecure,
      @HiveField(15) @JsonKey(name: 'is_root') bool? isRoot,
      @HiveField(16) AdministradorInfoModel? administrador,
      @HiveField(17)
      @JsonKey(name: 'pedagoga_fagundez')
      PedagogaFagundezInfoModel? pedagogaFagundez,
      @HiveField(18)
      @JsonKey(name: 'master_cliente')
      MasterClienteInfoModel? masterCliente,
      @HiveField(19) DiretorInfoModel? diretor,
      @HiveField(20) SecretariaInfoModel? secretaria,
      @HiveField(21) PedagogaInfoModel? pedagoga,
      @HiveField(22) ProfessorInfoModel? professor,
      @HiveField(23) AlunoInfoModel? aluno});

  @override
  $TelefoneModelCopyWith<$Res>? get telefone;
  @override
  $EnderecoModelCopyWith<$Res>? get endereco;
  @override
  $ClienteModelCopyWith<$Res>? get cliente;
  @override
  $AdministradorInfoModelCopyWith<$Res>? get administrador;
  @override
  $PedagogaFagundezInfoModelCopyWith<$Res>? get pedagogaFagundez;
  @override
  $MasterClienteInfoModelCopyWith<$Res>? get masterCliente;
  @override
  $DiretorInfoModelCopyWith<$Res>? get diretor;
  @override
  $SecretariaInfoModelCopyWith<$Res>? get secretaria;
  @override
  $PedagogaInfoModelCopyWith<$Res>? get pedagoga;
  @override
  $ProfessorInfoModelCopyWith<$Res>? get professor;
  @override
  $AlunoInfoModelCopyWith<$Res>? get aluno;
}

/// @nodoc
class __$$UsuarioModelImplCopyWithImpl<$Res>
    extends _$UsuarioModelCopyWithImpl<$Res, _$UsuarioModelImpl>
    implements _$$UsuarioModelImplCopyWith<$Res> {
  __$$UsuarioModelImplCopyWithImpl(
      _$UsuarioModelImpl _value, $Res Function(_$UsuarioModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UsuarioModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nome = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? cpf = freezed,
    Object? dataNascimento = freezed,
    Object? nomePai = freezed,
    Object? nomeMae = freezed,
    Object? telefone = freezed,
    Object? endereco = freezed,
    Object? cliente = freezed,
    Object? sexo = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? isSecure = freezed,
    Object? isRoot = freezed,
    Object? administrador = freezed,
    Object? pedagogaFagundez = freezed,
    Object? masterCliente = freezed,
    Object? diretor = freezed,
    Object? secretaria = freezed,
    Object? pedagoga = freezed,
    Object? professor = freezed,
    Object? aluno = freezed,
  }) {
    return _then(_$UsuarioModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      nome: freezed == nome
          ? _value.nome
          : nome // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      cpf: freezed == cpf
          ? _value.cpf
          : cpf // ignore: cast_nullable_to_non_nullable
              as String?,
      dataNascimento: freezed == dataNascimento
          ? _value.dataNascimento
          : dataNascimento // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      nomePai: freezed == nomePai
          ? _value.nomePai
          : nomePai // ignore: cast_nullable_to_non_nullable
              as String?,
      nomeMae: freezed == nomeMae
          ? _value.nomeMae
          : nomeMae // ignore: cast_nullable_to_non_nullable
              as String?,
      telefone: freezed == telefone
          ? _value.telefone
          : telefone // ignore: cast_nullable_to_non_nullable
              as TelefoneModel?,
      endereco: freezed == endereco
          ? _value.endereco
          : endereco // ignore: cast_nullable_to_non_nullable
              as EnderecoModel?,
      cliente: freezed == cliente
          ? _value.cliente
          : cliente // ignore: cast_nullable_to_non_nullable
              as ClienteModel?,
      sexo: freezed == sexo
          ? _value.sexo
          : sexo // ignore: cast_nullable_to_non_nullable
              as SexoModel?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isSecure: freezed == isSecure
          ? _value.isSecure
          : isSecure // ignore: cast_nullable_to_non_nullable
              as bool?,
      isRoot: freezed == isRoot
          ? _value.isRoot
          : isRoot // ignore: cast_nullable_to_non_nullable
              as bool?,
      administrador: freezed == administrador
          ? _value.administrador
          : administrador // ignore: cast_nullable_to_non_nullable
              as AdministradorInfoModel?,
      pedagogaFagundez: freezed == pedagogaFagundez
          ? _value.pedagogaFagundez
          : pedagogaFagundez // ignore: cast_nullable_to_non_nullable
              as PedagogaFagundezInfoModel?,
      masterCliente: freezed == masterCliente
          ? _value.masterCliente
          : masterCliente // ignore: cast_nullable_to_non_nullable
              as MasterClienteInfoModel?,
      diretor: freezed == diretor
          ? _value.diretor
          : diretor // ignore: cast_nullable_to_non_nullable
              as DiretorInfoModel?,
      secretaria: freezed == secretaria
          ? _value.secretaria
          : secretaria // ignore: cast_nullable_to_non_nullable
              as SecretariaInfoModel?,
      pedagoga: freezed == pedagoga
          ? _value.pedagoga
          : pedagoga // ignore: cast_nullable_to_non_nullable
              as PedagogaInfoModel?,
      professor: freezed == professor
          ? _value.professor
          : professor // ignore: cast_nullable_to_non_nullable
              as ProfessorInfoModel?,
      aluno: freezed == aluno
          ? _value.aluno
          : aluno // ignore: cast_nullable_to_non_nullable
              as AlunoInfoModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: userModelType, adapterName: 'UsuarioModelAdapter')
class _$UsuarioModelImpl extends _UsuarioModel {
  const _$UsuarioModelImpl(
      {@HiveField(0) this.id,
      @HiveField(1) this.nome,
      @HiveField(2) this.username,
      @HiveField(3) this.email,
      @HiveField(4) this.cpf,
      @HiveField(5)
      @DateTimeAdapter()
      @JsonKey(name: 'data_nascimento')
      this.dataNascimento,
      @HiveField(6) @JsonKey(name: 'nome_pai') this.nomePai,
      @HiveField(7) @JsonKey(name: 'nome_mae') this.nomeMae,
      @HiveField(8) this.telefone,
      @HiveField(9) this.endereco,
      @HiveField(10) this.cliente,
      @HiveField(11) @SexoConverter() this.sexo,
      @DateTimeAdapter()
      @HiveField(12)
      @JsonKey(name: 'created_at')
      this.createdAt,
      @DateTimeAdapter()
      @HiveField(13)
      @JsonKey(name: 'updated_at')
      this.updatedAt,
      @HiveField(14) @JsonKey(name: 'is_secure') this.isSecure,
      @HiveField(15) @JsonKey(name: 'is_root') this.isRoot,
      @HiveField(16) this.administrador,
      @HiveField(17) @JsonKey(name: 'pedagoga_fagundez') this.pedagogaFagundez,
      @HiveField(18) @JsonKey(name: 'master_cliente') this.masterCliente,
      @HiveField(19) this.diretor,
      @HiveField(20) this.secretaria,
      @HiveField(21) this.pedagoga,
      @HiveField(22) this.professor,
      @HiveField(23) this.aluno})
      : super._();

  factory _$UsuarioModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UsuarioModelImplFromJson(json);

  @override
  @HiveField(0)
  final int? id;
  @override
  @HiveField(1)
  final String? nome;
  @override
  @HiveField(2)
  final String? username;
  @override
  @HiveField(3)
  final String? email;
  @override
  @HiveField(4)
  final String? cpf;
  @override
  @HiveField(5)
  @DateTimeAdapter()
  @JsonKey(name: 'data_nascimento')
  final DateTime? dataNascimento;
  @override
  @HiveField(6)
  @JsonKey(name: 'nome_pai')
  final String? nomePai;
  @override
  @HiveField(7)
  @JsonKey(name: 'nome_mae')
  final String? nomeMae;
  @override
  @HiveField(8)
  final TelefoneModel? telefone;
  @override
  @HiveField(9)
  final EnderecoModel? endereco;
  @override
  @HiveField(10)
  final ClienteModel? cliente;
  @override
  @HiveField(11)
  @SexoConverter()
  final SexoModel? sexo;
  @override
  @DateTimeAdapter()
  @HiveField(12)
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @DateTimeAdapter()
  @HiveField(13)
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  @HiveField(14)
  @JsonKey(name: 'is_secure')
  final bool? isSecure;
  @override
  @HiveField(15)
  @JsonKey(name: 'is_root')
  final bool? isRoot;
  @override
  @HiveField(16)
  final AdministradorInfoModel? administrador;
  @override
  @HiveField(17)
  @JsonKey(name: 'pedagoga_fagundez')
  final PedagogaFagundezInfoModel? pedagogaFagundez;
  @override
  @HiveField(18)
  @JsonKey(name: 'master_cliente')
  final MasterClienteInfoModel? masterCliente;
  @override
  @HiveField(19)
  final DiretorInfoModel? diretor;
  @override
  @HiveField(20)
  final SecretariaInfoModel? secretaria;
  @override
  @HiveField(21)
  final PedagogaInfoModel? pedagoga;
  @override
  @HiveField(22)
  final ProfessorInfoModel? professor;
  @override
  @HiveField(23)
  final AlunoInfoModel? aluno;

  @override
  String toString() {
    return 'UsuarioModel(id: $id, nome: $nome, username: $username, email: $email, cpf: $cpf, dataNascimento: $dataNascimento, nomePai: $nomePai, nomeMae: $nomeMae, telefone: $telefone, endereco: $endereco, cliente: $cliente, sexo: $sexo, createdAt: $createdAt, updatedAt: $updatedAt, isSecure: $isSecure, isRoot: $isRoot, administrador: $administrador, pedagogaFagundez: $pedagogaFagundez, masterCliente: $masterCliente, diretor: $diretor, secretaria: $secretaria, pedagoga: $pedagoga, professor: $professor, aluno: $aluno)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsuarioModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nome, nome) || other.nome == nome) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.cpf, cpf) || other.cpf == cpf) &&
            (identical(other.dataNascimento, dataNascimento) ||
                other.dataNascimento == dataNascimento) &&
            (identical(other.nomePai, nomePai) || other.nomePai == nomePai) &&
            (identical(other.nomeMae, nomeMae) || other.nomeMae == nomeMae) &&
            (identical(other.telefone, telefone) ||
                other.telefone == telefone) &&
            (identical(other.endereco, endereco) ||
                other.endereco == endereco) &&
            (identical(other.cliente, cliente) || other.cliente == cliente) &&
            (identical(other.sexo, sexo) || other.sexo == sexo) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.isSecure, isSecure) ||
                other.isSecure == isSecure) &&
            (identical(other.isRoot, isRoot) || other.isRoot == isRoot) &&
            (identical(other.administrador, administrador) ||
                other.administrador == administrador) &&
            (identical(other.pedagogaFagundez, pedagogaFagundez) ||
                other.pedagogaFagundez == pedagogaFagundez) &&
            (identical(other.masterCliente, masterCliente) ||
                other.masterCliente == masterCliente) &&
            (identical(other.diretor, diretor) || other.diretor == diretor) &&
            (identical(other.secretaria, secretaria) ||
                other.secretaria == secretaria) &&
            (identical(other.pedagoga, pedagoga) ||
                other.pedagoga == pedagoga) &&
            (identical(other.professor, professor) ||
                other.professor == professor) &&
            (identical(other.aluno, aluno) || other.aluno == aluno));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        nome,
        username,
        email,
        cpf,
        dataNascimento,
        nomePai,
        nomeMae,
        telefone,
        endereco,
        cliente,
        sexo,
        createdAt,
        updatedAt,
        isSecure,
        isRoot,
        administrador,
        pedagogaFagundez,
        masterCliente,
        diretor,
        secretaria,
        pedagoga,
        professor,
        aluno
      ]);

  /// Create a copy of UsuarioModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UsuarioModelImplCopyWith<_$UsuarioModelImpl> get copyWith =>
      __$$UsuarioModelImplCopyWithImpl<_$UsuarioModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UsuarioModelImplToJson(
      this,
    );
  }
}

abstract class _UsuarioModel extends UsuarioModel {
  const factory _UsuarioModel(
      {@HiveField(0) final int? id,
      @HiveField(1) final String? nome,
      @HiveField(2) final String? username,
      @HiveField(3) final String? email,
      @HiveField(4) final String? cpf,
      @HiveField(5)
      @DateTimeAdapter()
      @JsonKey(name: 'data_nascimento')
      final DateTime? dataNascimento,
      @HiveField(6) @JsonKey(name: 'nome_pai') final String? nomePai,
      @HiveField(7) @JsonKey(name: 'nome_mae') final String? nomeMae,
      @HiveField(8) final TelefoneModel? telefone,
      @HiveField(9) final EnderecoModel? endereco,
      @HiveField(10) final ClienteModel? cliente,
      @HiveField(11) @SexoConverter() final SexoModel? sexo,
      @DateTimeAdapter()
      @HiveField(12)
      @JsonKey(name: 'created_at')
      final DateTime? createdAt,
      @DateTimeAdapter()
      @HiveField(13)
      @JsonKey(name: 'updated_at')
      final DateTime? updatedAt,
      @HiveField(14) @JsonKey(name: 'is_secure') final bool? isSecure,
      @HiveField(15) @JsonKey(name: 'is_root') final bool? isRoot,
      @HiveField(16) final AdministradorInfoModel? administrador,
      @HiveField(17)
      @JsonKey(name: 'pedagoga_fagundez')
      final PedagogaFagundezInfoModel? pedagogaFagundez,
      @HiveField(18)
      @JsonKey(name: 'master_cliente')
      final MasterClienteInfoModel? masterCliente,
      @HiveField(19) final DiretorInfoModel? diretor,
      @HiveField(20) final SecretariaInfoModel? secretaria,
      @HiveField(21) final PedagogaInfoModel? pedagoga,
      @HiveField(22) final ProfessorInfoModel? professor,
      @HiveField(23) final AlunoInfoModel? aluno}) = _$UsuarioModelImpl;
  const _UsuarioModel._() : super._();

  factory _UsuarioModel.fromJson(Map<String, dynamic> json) =
      _$UsuarioModelImpl.fromJson;

  @override
  @HiveField(0)
  int? get id;
  @override
  @HiveField(1)
  String? get nome;
  @override
  @HiveField(2)
  String? get username;
  @override
  @HiveField(3)
  String? get email;
  @override
  @HiveField(4)
  String? get cpf;
  @override
  @HiveField(5)
  @DateTimeAdapter()
  @JsonKey(name: 'data_nascimento')
  DateTime? get dataNascimento;
  @override
  @HiveField(6)
  @JsonKey(name: 'nome_pai')
  String? get nomePai;
  @override
  @HiveField(7)
  @JsonKey(name: 'nome_mae')
  String? get nomeMae;
  @override
  @HiveField(8)
  TelefoneModel? get telefone;
  @override
  @HiveField(9)
  EnderecoModel? get endereco;
  @override
  @HiveField(10)
  ClienteModel? get cliente;
  @override
  @HiveField(11)
  @SexoConverter()
  SexoModel? get sexo;
  @override
  @DateTimeAdapter()
  @HiveField(12)
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @DateTimeAdapter()
  @HiveField(13)
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @HiveField(14)
  @JsonKey(name: 'is_secure')
  bool? get isSecure;
  @override
  @HiveField(15)
  @JsonKey(name: 'is_root')
  bool? get isRoot;
  @override
  @HiveField(16)
  AdministradorInfoModel? get administrador;
  @override
  @HiveField(17)
  @JsonKey(name: 'pedagoga_fagundez')
  PedagogaFagundezInfoModel? get pedagogaFagundez;
  @override
  @HiveField(18)
  @JsonKey(name: 'master_cliente')
  MasterClienteInfoModel? get masterCliente;
  @override
  @HiveField(19)
  DiretorInfoModel? get diretor;
  @override
  @HiveField(20)
  SecretariaInfoModel? get secretaria;
  @override
  @HiveField(21)
  PedagogaInfoModel? get pedagoga;
  @override
  @HiveField(22)
  ProfessorInfoModel? get professor;
  @override
  @HiveField(23)
  AlunoInfoModel? get aluno;

  /// Create a copy of UsuarioModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UsuarioModelImplCopyWith<_$UsuarioModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
