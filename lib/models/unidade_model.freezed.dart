// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unidade_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UnidadeModel _$UnidadeModelFromJson(Map<String, dynamic> json) {
  return _UnidadeModel.fromJson(json);
}

/// @nodoc
mixin _$UnidadeModel {
  @HiveField(0)
  int? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get nome => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: 'data_inauguracao')
  @DateTimeAdapter()
  DateTime? get dataInauguracao => throw _privateConstructorUsedError;
  @HiveField(3)
  ClienteModel? get cliente => throw _privateConstructorUsedError;
  @HiveField(4)
  @JsonKey(name: 'vice_diretor')
  String? get viceDiretor => throw _privateConstructorUsedError;
  @HiveField(5)
  EnderecoModel? get endereco => throw _privateConstructorUsedError;
  @HiveField(6)
  @JsonKey(name: 'tipo_unidade')
  TipoDeUnidadeModel? get tipoDeUnidade => throw _privateConstructorUsedError;
  @HiveField(7)
  @JsonKey(name: 'usuario_diretor')
  UsuarioModel? get diretor => throw _privateConstructorUsedError;

  /// Serializes this UnidadeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UnidadeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UnidadeModelCopyWith<UnidadeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnidadeModelCopyWith<$Res> {
  factory $UnidadeModelCopyWith(
          UnidadeModel value, $Res Function(UnidadeModel) then) =
      _$UnidadeModelCopyWithImpl<$Res, UnidadeModel>;
  @useResult
  $Res call(
      {@HiveField(0) int? id,
      @HiveField(1) String? nome,
      @HiveField(2)
      @JsonKey(name: 'data_inauguracao')
      @DateTimeAdapter()
      DateTime? dataInauguracao,
      @HiveField(3) ClienteModel? cliente,
      @HiveField(4) @JsonKey(name: 'vice_diretor') String? viceDiretor,
      @HiveField(5) EnderecoModel? endereco,
      @HiveField(6)
      @JsonKey(name: 'tipo_unidade')
      TipoDeUnidadeModel? tipoDeUnidade,
      @HiveField(7) @JsonKey(name: 'usuario_diretor') UsuarioModel? diretor});

  $ClienteModelCopyWith<$Res>? get cliente;
  $EnderecoModelCopyWith<$Res>? get endereco;
  $TipoDeUnidadeModelCopyWith<$Res>? get tipoDeUnidade;
  $UsuarioModelCopyWith<$Res>? get diretor;
}

/// @nodoc
class _$UnidadeModelCopyWithImpl<$Res, $Val extends UnidadeModel>
    implements $UnidadeModelCopyWith<$Res> {
  _$UnidadeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UnidadeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nome = freezed,
    Object? dataInauguracao = freezed,
    Object? cliente = freezed,
    Object? viceDiretor = freezed,
    Object? endereco = freezed,
    Object? tipoDeUnidade = freezed,
    Object? diretor = freezed,
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
      dataInauguracao: freezed == dataInauguracao
          ? _value.dataInauguracao
          : dataInauguracao // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cliente: freezed == cliente
          ? _value.cliente
          : cliente // ignore: cast_nullable_to_non_nullable
              as ClienteModel?,
      viceDiretor: freezed == viceDiretor
          ? _value.viceDiretor
          : viceDiretor // ignore: cast_nullable_to_non_nullable
              as String?,
      endereco: freezed == endereco
          ? _value.endereco
          : endereco // ignore: cast_nullable_to_non_nullable
              as EnderecoModel?,
      tipoDeUnidade: freezed == tipoDeUnidade
          ? _value.tipoDeUnidade
          : tipoDeUnidade // ignore: cast_nullable_to_non_nullable
              as TipoDeUnidadeModel?,
      diretor: freezed == diretor
          ? _value.diretor
          : diretor // ignore: cast_nullable_to_non_nullable
              as UsuarioModel?,
    ) as $Val);
  }

  /// Create a copy of UnidadeModel
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

  /// Create a copy of UnidadeModel
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

  /// Create a copy of UnidadeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TipoDeUnidadeModelCopyWith<$Res>? get tipoDeUnidade {
    if (_value.tipoDeUnidade == null) {
      return null;
    }

    return $TipoDeUnidadeModelCopyWith<$Res>(_value.tipoDeUnidade!, (value) {
      return _then(_value.copyWith(tipoDeUnidade: value) as $Val);
    });
  }

  /// Create a copy of UnidadeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UsuarioModelCopyWith<$Res>? get diretor {
    if (_value.diretor == null) {
      return null;
    }

    return $UsuarioModelCopyWith<$Res>(_value.diretor!, (value) {
      return _then(_value.copyWith(diretor: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UnidadeModelImplCopyWith<$Res>
    implements $UnidadeModelCopyWith<$Res> {
  factory _$$UnidadeModelImplCopyWith(
          _$UnidadeModelImpl value, $Res Function(_$UnidadeModelImpl) then) =
      __$$UnidadeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int? id,
      @HiveField(1) String? nome,
      @HiveField(2)
      @JsonKey(name: 'data_inauguracao')
      @DateTimeAdapter()
      DateTime? dataInauguracao,
      @HiveField(3) ClienteModel? cliente,
      @HiveField(4) @JsonKey(name: 'vice_diretor') String? viceDiretor,
      @HiveField(5) EnderecoModel? endereco,
      @HiveField(6)
      @JsonKey(name: 'tipo_unidade')
      TipoDeUnidadeModel? tipoDeUnidade,
      @HiveField(7) @JsonKey(name: 'usuario_diretor') UsuarioModel? diretor});

  @override
  $ClienteModelCopyWith<$Res>? get cliente;
  @override
  $EnderecoModelCopyWith<$Res>? get endereco;
  @override
  $TipoDeUnidadeModelCopyWith<$Res>? get tipoDeUnidade;
  @override
  $UsuarioModelCopyWith<$Res>? get diretor;
}

/// @nodoc
class __$$UnidadeModelImplCopyWithImpl<$Res>
    extends _$UnidadeModelCopyWithImpl<$Res, _$UnidadeModelImpl>
    implements _$$UnidadeModelImplCopyWith<$Res> {
  __$$UnidadeModelImplCopyWithImpl(
      _$UnidadeModelImpl _value, $Res Function(_$UnidadeModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnidadeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nome = freezed,
    Object? dataInauguracao = freezed,
    Object? cliente = freezed,
    Object? viceDiretor = freezed,
    Object? endereco = freezed,
    Object? tipoDeUnidade = freezed,
    Object? diretor = freezed,
  }) {
    return _then(_$UnidadeModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      nome: freezed == nome
          ? _value.nome
          : nome // ignore: cast_nullable_to_non_nullable
              as String?,
      dataInauguracao: freezed == dataInauguracao
          ? _value.dataInauguracao
          : dataInauguracao // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cliente: freezed == cliente
          ? _value.cliente
          : cliente // ignore: cast_nullable_to_non_nullable
              as ClienteModel?,
      viceDiretor: freezed == viceDiretor
          ? _value.viceDiretor
          : viceDiretor // ignore: cast_nullable_to_non_nullable
              as String?,
      endereco: freezed == endereco
          ? _value.endereco
          : endereco // ignore: cast_nullable_to_non_nullable
              as EnderecoModel?,
      tipoDeUnidade: freezed == tipoDeUnidade
          ? _value.tipoDeUnidade
          : tipoDeUnidade // ignore: cast_nullable_to_non_nullable
              as TipoDeUnidadeModel?,
      diretor: freezed == diretor
          ? _value.diretor
          : diretor // ignore: cast_nullable_to_non_nullable
              as UsuarioModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: unidadeModelType, adapterName: 'UnidadeAdapter')
class _$UnidadeModelImpl extends _UnidadeModel {
  const _$UnidadeModelImpl(
      {@HiveField(0) this.id,
      @HiveField(1) this.nome,
      @HiveField(2)
      @JsonKey(name: 'data_inauguracao')
      @DateTimeAdapter()
      this.dataInauguracao,
      @HiveField(3) this.cliente,
      @HiveField(4) @JsonKey(name: 'vice_diretor') this.viceDiretor,
      @HiveField(5) this.endereco,
      @HiveField(6) @JsonKey(name: 'tipo_unidade') this.tipoDeUnidade,
      @HiveField(7) @JsonKey(name: 'usuario_diretor') this.diretor})
      : super._();

  factory _$UnidadeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnidadeModelImplFromJson(json);

  @override
  @HiveField(0)
  final int? id;
  @override
  @HiveField(1)
  final String? nome;
  @override
  @HiveField(2)
  @JsonKey(name: 'data_inauguracao')
  @DateTimeAdapter()
  final DateTime? dataInauguracao;
  @override
  @HiveField(3)
  final ClienteModel? cliente;
  @override
  @HiveField(4)
  @JsonKey(name: 'vice_diretor')
  final String? viceDiretor;
  @override
  @HiveField(5)
  final EnderecoModel? endereco;
  @override
  @HiveField(6)
  @JsonKey(name: 'tipo_unidade')
  final TipoDeUnidadeModel? tipoDeUnidade;
  @override
  @HiveField(7)
  @JsonKey(name: 'usuario_diretor')
  final UsuarioModel? diretor;

  @override
  String toString() {
    return 'UnidadeModel(id: $id, nome: $nome, dataInauguracao: $dataInauguracao, cliente: $cliente, viceDiretor: $viceDiretor, endereco: $endereco, tipoDeUnidade: $tipoDeUnidade, diretor: $diretor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnidadeModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nome, nome) || other.nome == nome) &&
            (identical(other.dataInauguracao, dataInauguracao) ||
                other.dataInauguracao == dataInauguracao) &&
            (identical(other.cliente, cliente) || other.cliente == cliente) &&
            (identical(other.viceDiretor, viceDiretor) ||
                other.viceDiretor == viceDiretor) &&
            (identical(other.endereco, endereco) ||
                other.endereco == endereco) &&
            (identical(other.tipoDeUnidade, tipoDeUnidade) ||
                other.tipoDeUnidade == tipoDeUnidade) &&
            (identical(other.diretor, diretor) || other.diretor == diretor));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, nome, dataInauguracao,
      cliente, viceDiretor, endereco, tipoDeUnidade, diretor);

  /// Create a copy of UnidadeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnidadeModelImplCopyWith<_$UnidadeModelImpl> get copyWith =>
      __$$UnidadeModelImplCopyWithImpl<_$UnidadeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UnidadeModelImplToJson(
      this,
    );
  }
}

abstract class _UnidadeModel extends UnidadeModel {
  const factory _UnidadeModel(
      {@HiveField(0) final int? id,
      @HiveField(1) final String? nome,
      @HiveField(2)
      @JsonKey(name: 'data_inauguracao')
      @DateTimeAdapter()
      final DateTime? dataInauguracao,
      @HiveField(3) final ClienteModel? cliente,
      @HiveField(4) @JsonKey(name: 'vice_diretor') final String? viceDiretor,
      @HiveField(5) final EnderecoModel? endereco,
      @HiveField(6)
      @JsonKey(name: 'tipo_unidade')
      final TipoDeUnidadeModel? tipoDeUnidade,
      @HiveField(7)
      @JsonKey(name: 'usuario_diretor')
      final UsuarioModel? diretor}) = _$UnidadeModelImpl;
  const _UnidadeModel._() : super._();

  factory _UnidadeModel.fromJson(Map<String, dynamic> json) =
      _$UnidadeModelImpl.fromJson;

  @override
  @HiveField(0)
  int? get id;
  @override
  @HiveField(1)
  String? get nome;
  @override
  @HiveField(2)
  @JsonKey(name: 'data_inauguracao')
  @DateTimeAdapter()
  DateTime? get dataInauguracao;
  @override
  @HiveField(3)
  ClienteModel? get cliente;
  @override
  @HiveField(4)
  @JsonKey(name: 'vice_diretor')
  String? get viceDiretor;
  @override
  @HiveField(5)
  EnderecoModel? get endereco;
  @override
  @HiveField(6)
  @JsonKey(name: 'tipo_unidade')
  TipoDeUnidadeModel? get tipoDeUnidade;
  @override
  @HiveField(7)
  @JsonKey(name: 'usuario_diretor')
  UsuarioModel? get diretor;

  /// Create a copy of UnidadeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnidadeModelImplCopyWith<_$UnidadeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
