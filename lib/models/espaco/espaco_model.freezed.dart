// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'espaco_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EspacoModel _$EspacoModelFromJson(Map<String, dynamic> json) {
  return _EspacoModel.fromJson(json);
}

/// @nodoc
mixin _$EspacoModel {
  @HiveField(0)
  int? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get nome => throw _privateConstructorUsedError;
  @HiveField(2)
  bool? get restrito => throw _privateConstructorUsedError;
  @HiveField(3)
  UnidadeModel? get unidade => throw _privateConstructorUsedError;
  @HiveField(4)
  UsuarioModel? get usuario => throw _privateConstructorUsedError;
  @HiveField(5)
  List<EstacaoModel>? get celulas => throw _privateConstructorUsedError;
  @JsonKey(name: 'unidades_externas')
  @HiveField(6)
  List<UnidadeModel>? get unidadesExternas =>
      throw _privateConstructorUsedError;
  @DateTimeAdapter()
  @HiveField(7)
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @DateTimeAdapter()
  @HiveField(8)
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this EspacoModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EspacoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EspacoModelCopyWith<EspacoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EspacoModelCopyWith<$Res> {
  factory $EspacoModelCopyWith(
          EspacoModel value, $Res Function(EspacoModel) then) =
      _$EspacoModelCopyWithImpl<$Res, EspacoModel>;
  @useResult
  $Res call(
      {@HiveField(0) int? id,
      @HiveField(1) String? nome,
      @HiveField(2) bool? restrito,
      @HiveField(3) UnidadeModel? unidade,
      @HiveField(4) UsuarioModel? usuario,
      @HiveField(5) List<EstacaoModel>? celulas,
      @JsonKey(name: 'unidades_externas')
      @HiveField(6)
      List<UnidadeModel>? unidadesExternas,
      @DateTimeAdapter()
      @HiveField(7)
      @JsonKey(name: 'created_at')
      DateTime? createdAt,
      @DateTimeAdapter()
      @HiveField(8)
      @JsonKey(name: 'updated_at')
      DateTime? updatedAt});

  $UnidadeModelCopyWith<$Res>? get unidade;
  $UsuarioModelCopyWith<$Res>? get usuario;
}

/// @nodoc
class _$EspacoModelCopyWithImpl<$Res, $Val extends EspacoModel>
    implements $EspacoModelCopyWith<$Res> {
  _$EspacoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EspacoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nome = freezed,
    Object? restrito = freezed,
    Object? unidade = freezed,
    Object? usuario = freezed,
    Object? celulas = freezed,
    Object? unidadesExternas = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
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
      restrito: freezed == restrito
          ? _value.restrito
          : restrito // ignore: cast_nullable_to_non_nullable
              as bool?,
      unidade: freezed == unidade
          ? _value.unidade
          : unidade // ignore: cast_nullable_to_non_nullable
              as UnidadeModel?,
      usuario: freezed == usuario
          ? _value.usuario
          : usuario // ignore: cast_nullable_to_non_nullable
              as UsuarioModel?,
      celulas: freezed == celulas
          ? _value.celulas
          : celulas // ignore: cast_nullable_to_non_nullable
              as List<EstacaoModel>?,
      unidadesExternas: freezed == unidadesExternas
          ? _value.unidadesExternas
          : unidadesExternas // ignore: cast_nullable_to_non_nullable
              as List<UnidadeModel>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  /// Create a copy of EspacoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UnidadeModelCopyWith<$Res>? get unidade {
    if (_value.unidade == null) {
      return null;
    }

    return $UnidadeModelCopyWith<$Res>(_value.unidade!, (value) {
      return _then(_value.copyWith(unidade: value) as $Val);
    });
  }

  /// Create a copy of EspacoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UsuarioModelCopyWith<$Res>? get usuario {
    if (_value.usuario == null) {
      return null;
    }

    return $UsuarioModelCopyWith<$Res>(_value.usuario!, (value) {
      return _then(_value.copyWith(usuario: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EspacoModelImplCopyWith<$Res>
    implements $EspacoModelCopyWith<$Res> {
  factory _$$EspacoModelImplCopyWith(
          _$EspacoModelImpl value, $Res Function(_$EspacoModelImpl) then) =
      __$$EspacoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int? id,
      @HiveField(1) String? nome,
      @HiveField(2) bool? restrito,
      @HiveField(3) UnidadeModel? unidade,
      @HiveField(4) UsuarioModel? usuario,
      @HiveField(5) List<EstacaoModel>? celulas,
      @JsonKey(name: 'unidades_externas')
      @HiveField(6)
      List<UnidadeModel>? unidadesExternas,
      @DateTimeAdapter()
      @HiveField(7)
      @JsonKey(name: 'created_at')
      DateTime? createdAt,
      @DateTimeAdapter()
      @HiveField(8)
      @JsonKey(name: 'updated_at')
      DateTime? updatedAt});

  @override
  $UnidadeModelCopyWith<$Res>? get unidade;
  @override
  $UsuarioModelCopyWith<$Res>? get usuario;
}

/// @nodoc
class __$$EspacoModelImplCopyWithImpl<$Res>
    extends _$EspacoModelCopyWithImpl<$Res, _$EspacoModelImpl>
    implements _$$EspacoModelImplCopyWith<$Res> {
  __$$EspacoModelImplCopyWithImpl(
      _$EspacoModelImpl _value, $Res Function(_$EspacoModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of EspacoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nome = freezed,
    Object? restrito = freezed,
    Object? unidade = freezed,
    Object? usuario = freezed,
    Object? celulas = freezed,
    Object? unidadesExternas = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$EspacoModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      nome: freezed == nome
          ? _value.nome
          : nome // ignore: cast_nullable_to_non_nullable
              as String?,
      restrito: freezed == restrito
          ? _value.restrito
          : restrito // ignore: cast_nullable_to_non_nullable
              as bool?,
      unidade: freezed == unidade
          ? _value.unidade
          : unidade // ignore: cast_nullable_to_non_nullable
              as UnidadeModel?,
      usuario: freezed == usuario
          ? _value.usuario
          : usuario // ignore: cast_nullable_to_non_nullable
              as UsuarioModel?,
      celulas: freezed == celulas
          ? _value._celulas
          : celulas // ignore: cast_nullable_to_non_nullable
              as List<EstacaoModel>?,
      unidadesExternas: freezed == unidadesExternas
          ? _value._unidadesExternas
          : unidadesExternas // ignore: cast_nullable_to_non_nullable
              as List<UnidadeModel>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: espacoModelType, adapterName: 'EspacoModelAdapter')
class _$EspacoModelImpl implements _EspacoModel {
  const _$EspacoModelImpl(
      {@HiveField(0) this.id,
      @HiveField(1) this.nome,
      @HiveField(2) this.restrito,
      @HiveField(3) this.unidade,
      @HiveField(4) this.usuario,
      @HiveField(5) final List<EstacaoModel>? celulas,
      @JsonKey(name: 'unidades_externas')
      @HiveField(6)
      final List<UnidadeModel>? unidadesExternas,
      @DateTimeAdapter()
      @HiveField(7)
      @JsonKey(name: 'created_at')
      this.createdAt,
      @DateTimeAdapter()
      @HiveField(8)
      @JsonKey(name: 'updated_at')
      this.updatedAt})
      : _celulas = celulas,
        _unidadesExternas = unidadesExternas;

  factory _$EspacoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EspacoModelImplFromJson(json);

  @override
  @HiveField(0)
  final int? id;
  @override
  @HiveField(1)
  final String? nome;
  @override
  @HiveField(2)
  final bool? restrito;
  @override
  @HiveField(3)
  final UnidadeModel? unidade;
  @override
  @HiveField(4)
  final UsuarioModel? usuario;
  final List<EstacaoModel>? _celulas;
  @override
  @HiveField(5)
  List<EstacaoModel>? get celulas {
    final value = _celulas;
    if (value == null) return null;
    if (_celulas is EqualUnmodifiableListView) return _celulas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<UnidadeModel>? _unidadesExternas;
  @override
  @JsonKey(name: 'unidades_externas')
  @HiveField(6)
  List<UnidadeModel>? get unidadesExternas {
    final value = _unidadesExternas;
    if (value == null) return null;
    if (_unidadesExternas is EqualUnmodifiableListView)
      return _unidadesExternas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @DateTimeAdapter()
  @HiveField(7)
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @DateTimeAdapter()
  @HiveField(8)
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'EspacoModel(id: $id, nome: $nome, restrito: $restrito, unidade: $unidade, usuario: $usuario, celulas: $celulas, unidadesExternas: $unidadesExternas, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EspacoModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nome, nome) || other.nome == nome) &&
            (identical(other.restrito, restrito) ||
                other.restrito == restrito) &&
            (identical(other.unidade, unidade) || other.unidade == unidade) &&
            (identical(other.usuario, usuario) || other.usuario == usuario) &&
            const DeepCollectionEquality().equals(other._celulas, _celulas) &&
            const DeepCollectionEquality()
                .equals(other._unidadesExternas, _unidadesExternas) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      nome,
      restrito,
      unidade,
      usuario,
      const DeepCollectionEquality().hash(_celulas),
      const DeepCollectionEquality().hash(_unidadesExternas),
      createdAt,
      updatedAt);

  /// Create a copy of EspacoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EspacoModelImplCopyWith<_$EspacoModelImpl> get copyWith =>
      __$$EspacoModelImplCopyWithImpl<_$EspacoModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EspacoModelImplToJson(
      this,
    );
  }
}

abstract class _EspacoModel implements EspacoModel {
  const factory _EspacoModel(
      {@HiveField(0) final int? id,
      @HiveField(1) final String? nome,
      @HiveField(2) final bool? restrito,
      @HiveField(3) final UnidadeModel? unidade,
      @HiveField(4) final UsuarioModel? usuario,
      @HiveField(5) final List<EstacaoModel>? celulas,
      @JsonKey(name: 'unidades_externas')
      @HiveField(6)
      final List<UnidadeModel>? unidadesExternas,
      @DateTimeAdapter()
      @HiveField(7)
      @JsonKey(name: 'created_at')
      final DateTime? createdAt,
      @DateTimeAdapter()
      @HiveField(8)
      @JsonKey(name: 'updated_at')
      final DateTime? updatedAt}) = _$EspacoModelImpl;

  factory _EspacoModel.fromJson(Map<String, dynamic> json) =
      _$EspacoModelImpl.fromJson;

  @override
  @HiveField(0)
  int? get id;
  @override
  @HiveField(1)
  String? get nome;
  @override
  @HiveField(2)
  bool? get restrito;
  @override
  @HiveField(3)
  UnidadeModel? get unidade;
  @override
  @HiveField(4)
  UsuarioModel? get usuario;
  @override
  @HiveField(5)
  List<EstacaoModel>? get celulas;
  @override
  @JsonKey(name: 'unidades_externas')
  @HiveField(6)
  List<UnidadeModel>? get unidadesExternas;
  @override
  @DateTimeAdapter()
  @HiveField(7)
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @DateTimeAdapter()
  @HiveField(8)
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;

  /// Create a copy of EspacoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EspacoModelImplCopyWith<_$EspacoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
