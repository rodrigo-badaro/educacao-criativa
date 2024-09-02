// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cliente_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClienteModel _$ClienteModelFromJson(Map<String, dynamic> json) {
  return _ClienteModel.fromJson(json);
}

/// @nodoc
mixin _$ClienteModel {
  @HiveField(0)
  int? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get nome => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get descricao => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get sigla => throw _privateConstructorUsedError;
  @HiveField(4)
  @JsonKey(name: 'nome_responsavel')
  String? get nomeResponsavel => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get cpf => throw _privateConstructorUsedError;
  @HiveField(6)
  String? get email => throw _privateConstructorUsedError;
  @HiveField(7)
  TelefoneModel? get telefone => throw _privateConstructorUsedError;

  /// Serializes this ClienteModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClienteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClienteModelCopyWith<ClienteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClienteModelCopyWith<$Res> {
  factory $ClienteModelCopyWith(
          ClienteModel value, $Res Function(ClienteModel) then) =
      _$ClienteModelCopyWithImpl<$Res, ClienteModel>;
  @useResult
  $Res call(
      {@HiveField(0) int? id,
      @HiveField(1) String? nome,
      @HiveField(2) String? descricao,
      @HiveField(3) String? sigla,
      @HiveField(4) @JsonKey(name: 'nome_responsavel') String? nomeResponsavel,
      @HiveField(5) String? cpf,
      @HiveField(6) String? email,
      @HiveField(7) TelefoneModel? telefone});

  $TelefoneModelCopyWith<$Res>? get telefone;
}

/// @nodoc
class _$ClienteModelCopyWithImpl<$Res, $Val extends ClienteModel>
    implements $ClienteModelCopyWith<$Res> {
  _$ClienteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClienteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nome = freezed,
    Object? descricao = freezed,
    Object? sigla = freezed,
    Object? nomeResponsavel = freezed,
    Object? cpf = freezed,
    Object? email = freezed,
    Object? telefone = freezed,
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
      descricao: freezed == descricao
          ? _value.descricao
          : descricao // ignore: cast_nullable_to_non_nullable
              as String?,
      sigla: freezed == sigla
          ? _value.sigla
          : sigla // ignore: cast_nullable_to_non_nullable
              as String?,
      nomeResponsavel: freezed == nomeResponsavel
          ? _value.nomeResponsavel
          : nomeResponsavel // ignore: cast_nullable_to_non_nullable
              as String?,
      cpf: freezed == cpf
          ? _value.cpf
          : cpf // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      telefone: freezed == telefone
          ? _value.telefone
          : telefone // ignore: cast_nullable_to_non_nullable
              as TelefoneModel?,
    ) as $Val);
  }

  /// Create a copy of ClienteModel
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
}

/// @nodoc
abstract class _$$ClienteModelImplCopyWith<$Res>
    implements $ClienteModelCopyWith<$Res> {
  factory _$$ClienteModelImplCopyWith(
          _$ClienteModelImpl value, $Res Function(_$ClienteModelImpl) then) =
      __$$ClienteModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int? id,
      @HiveField(1) String? nome,
      @HiveField(2) String? descricao,
      @HiveField(3) String? sigla,
      @HiveField(4) @JsonKey(name: 'nome_responsavel') String? nomeResponsavel,
      @HiveField(5) String? cpf,
      @HiveField(6) String? email,
      @HiveField(7) TelefoneModel? telefone});

  @override
  $TelefoneModelCopyWith<$Res>? get telefone;
}

/// @nodoc
class __$$ClienteModelImplCopyWithImpl<$Res>
    extends _$ClienteModelCopyWithImpl<$Res, _$ClienteModelImpl>
    implements _$$ClienteModelImplCopyWith<$Res> {
  __$$ClienteModelImplCopyWithImpl(
      _$ClienteModelImpl _value, $Res Function(_$ClienteModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClienteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nome = freezed,
    Object? descricao = freezed,
    Object? sigla = freezed,
    Object? nomeResponsavel = freezed,
    Object? cpf = freezed,
    Object? email = freezed,
    Object? telefone = freezed,
  }) {
    return _then(_$ClienteModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      nome: freezed == nome
          ? _value.nome
          : nome // ignore: cast_nullable_to_non_nullable
              as String?,
      descricao: freezed == descricao
          ? _value.descricao
          : descricao // ignore: cast_nullable_to_non_nullable
              as String?,
      sigla: freezed == sigla
          ? _value.sigla
          : sigla // ignore: cast_nullable_to_non_nullable
              as String?,
      nomeResponsavel: freezed == nomeResponsavel
          ? _value.nomeResponsavel
          : nomeResponsavel // ignore: cast_nullable_to_non_nullable
              as String?,
      cpf: freezed == cpf
          ? _value.cpf
          : cpf // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      telefone: freezed == telefone
          ? _value.telefone
          : telefone // ignore: cast_nullable_to_non_nullable
              as TelefoneModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: clienteModelType, adapterName: 'ClienteAdapter')
class _$ClienteModelImpl implements _ClienteModel {
  const _$ClienteModelImpl(
      {@HiveField(0) this.id,
      @HiveField(1) this.nome,
      @HiveField(2) this.descricao,
      @HiveField(3) this.sigla,
      @HiveField(4) @JsonKey(name: 'nome_responsavel') this.nomeResponsavel,
      @HiveField(5) this.cpf,
      @HiveField(6) this.email,
      @HiveField(7) this.telefone});

  factory _$ClienteModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClienteModelImplFromJson(json);

  @override
  @HiveField(0)
  final int? id;
  @override
  @HiveField(1)
  final String? nome;
  @override
  @HiveField(2)
  final String? descricao;
  @override
  @HiveField(3)
  final String? sigla;
  @override
  @HiveField(4)
  @JsonKey(name: 'nome_responsavel')
  final String? nomeResponsavel;
  @override
  @HiveField(5)
  final String? cpf;
  @override
  @HiveField(6)
  final String? email;
  @override
  @HiveField(7)
  final TelefoneModel? telefone;

  @override
  String toString() {
    return 'ClienteModel(id: $id, nome: $nome, descricao: $descricao, sigla: $sigla, nomeResponsavel: $nomeResponsavel, cpf: $cpf, email: $email, telefone: $telefone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClienteModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nome, nome) || other.nome == nome) &&
            (identical(other.descricao, descricao) ||
                other.descricao == descricao) &&
            (identical(other.sigla, sigla) || other.sigla == sigla) &&
            (identical(other.nomeResponsavel, nomeResponsavel) ||
                other.nomeResponsavel == nomeResponsavel) &&
            (identical(other.cpf, cpf) || other.cpf == cpf) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.telefone, telefone) ||
                other.telefone == telefone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, nome, descricao, sigla,
      nomeResponsavel, cpf, email, telefone);

  /// Create a copy of ClienteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClienteModelImplCopyWith<_$ClienteModelImpl> get copyWith =>
      __$$ClienteModelImplCopyWithImpl<_$ClienteModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClienteModelImplToJson(
      this,
    );
  }
}

abstract class _ClienteModel implements ClienteModel {
  const factory _ClienteModel(
      {@HiveField(0) final int? id,
      @HiveField(1) final String? nome,
      @HiveField(2) final String? descricao,
      @HiveField(3) final String? sigla,
      @HiveField(4)
      @JsonKey(name: 'nome_responsavel')
      final String? nomeResponsavel,
      @HiveField(5) final String? cpf,
      @HiveField(6) final String? email,
      @HiveField(7) final TelefoneModel? telefone}) = _$ClienteModelImpl;

  factory _ClienteModel.fromJson(Map<String, dynamic> json) =
      _$ClienteModelImpl.fromJson;

  @override
  @HiveField(0)
  int? get id;
  @override
  @HiveField(1)
  String? get nome;
  @override
  @HiveField(2)
  String? get descricao;
  @override
  @HiveField(3)
  String? get sigla;
  @override
  @HiveField(4)
  @JsonKey(name: 'nome_responsavel')
  String? get nomeResponsavel;
  @override
  @HiveField(5)
  String? get cpf;
  @override
  @HiveField(6)
  String? get email;
  @override
  @HiveField(7)
  TelefoneModel? get telefone;

  /// Create a copy of ClienteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClienteModelImplCopyWith<_$ClienteModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
