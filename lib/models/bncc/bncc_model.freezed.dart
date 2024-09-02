// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bncc_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BNCC _$BNCCFromJson(Map<String, dynamic> json) {
  return _BNCC.fromJson(json);
}

/// @nodoc
mixin _$BNCC {
  @HiveField(0)
  String? get codigo => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get nome => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get descricao => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get sugestao => throw _privateConstructorUsedError;

  /// Serializes this BNCC to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BNCC
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BNCCCopyWith<BNCC> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BNCCCopyWith<$Res> {
  factory $BNCCCopyWith(BNCC value, $Res Function(BNCC) then) =
      _$BNCCCopyWithImpl<$Res, BNCC>;
  @useResult
  $Res call(
      {@HiveField(0) String? codigo,
      @HiveField(1) String? nome,
      @HiveField(2) String? descricao,
      @HiveField(3) String? sugestao});
}

/// @nodoc
class _$BNCCCopyWithImpl<$Res, $Val extends BNCC>
    implements $BNCCCopyWith<$Res> {
  _$BNCCCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BNCC
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codigo = freezed,
    Object? nome = freezed,
    Object? descricao = freezed,
    Object? sugestao = freezed,
  }) {
    return _then(_value.copyWith(
      codigo: freezed == codigo
          ? _value.codigo
          : codigo // ignore: cast_nullable_to_non_nullable
              as String?,
      nome: freezed == nome
          ? _value.nome
          : nome // ignore: cast_nullable_to_non_nullable
              as String?,
      descricao: freezed == descricao
          ? _value.descricao
          : descricao // ignore: cast_nullable_to_non_nullable
              as String?,
      sugestao: freezed == sugestao
          ? _value.sugestao
          : sugestao // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BNCCImplCopyWith<$Res> implements $BNCCCopyWith<$Res> {
  factory _$$BNCCImplCopyWith(
          _$BNCCImpl value, $Res Function(_$BNCCImpl) then) =
      __$$BNCCImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String? codigo,
      @HiveField(1) String? nome,
      @HiveField(2) String? descricao,
      @HiveField(3) String? sugestao});
}

/// @nodoc
class __$$BNCCImplCopyWithImpl<$Res>
    extends _$BNCCCopyWithImpl<$Res, _$BNCCImpl>
    implements _$$BNCCImplCopyWith<$Res> {
  __$$BNCCImplCopyWithImpl(_$BNCCImpl _value, $Res Function(_$BNCCImpl) _then)
      : super(_value, _then);

  /// Create a copy of BNCC
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codigo = freezed,
    Object? nome = freezed,
    Object? descricao = freezed,
    Object? sugestao = freezed,
  }) {
    return _then(_$BNCCImpl(
      codigo: freezed == codigo
          ? _value.codigo
          : codigo // ignore: cast_nullable_to_non_nullable
              as String?,
      nome: freezed == nome
          ? _value.nome
          : nome // ignore: cast_nullable_to_non_nullable
              as String?,
      descricao: freezed == descricao
          ? _value.descricao
          : descricao // ignore: cast_nullable_to_non_nullable
              as String?,
      sugestao: freezed == sugestao
          ? _value.sugestao
          : sugestao // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: bnccModelType, adapterName: 'BNCCAdapter')
class _$BNCCImpl extends _BNCC {
  const _$BNCCImpl(
      {@HiveField(0) this.codigo,
      @HiveField(1) this.nome,
      @HiveField(2) this.descricao,
      @HiveField(3) this.sugestao})
      : super._();

  factory _$BNCCImpl.fromJson(Map<String, dynamic> json) =>
      _$$BNCCImplFromJson(json);

  @override
  @HiveField(0)
  final String? codigo;
  @override
  @HiveField(1)
  final String? nome;
  @override
  @HiveField(2)
  final String? descricao;
  @override
  @HiveField(3)
  final String? sugestao;

  @override
  String toString() {
    return 'BNCC(codigo: $codigo, nome: $nome, descricao: $descricao, sugestao: $sugestao)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BNCCImpl &&
            (identical(other.codigo, codigo) || other.codigo == codigo) &&
            (identical(other.nome, nome) || other.nome == nome) &&
            (identical(other.descricao, descricao) ||
                other.descricao == descricao) &&
            (identical(other.sugestao, sugestao) ||
                other.sugestao == sugestao));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, codigo, nome, descricao, sugestao);

  /// Create a copy of BNCC
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BNCCImplCopyWith<_$BNCCImpl> get copyWith =>
      __$$BNCCImplCopyWithImpl<_$BNCCImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BNCCImplToJson(
      this,
    );
  }
}

abstract class _BNCC extends BNCC {
  const factory _BNCC(
      {@HiveField(0) final String? codigo,
      @HiveField(1) final String? nome,
      @HiveField(2) final String? descricao,
      @HiveField(3) final String? sugestao}) = _$BNCCImpl;
  const _BNCC._() : super._();

  factory _BNCC.fromJson(Map<String, dynamic> json) = _$BNCCImpl.fromJson;

  @override
  @HiveField(0)
  String? get codigo;
  @override
  @HiveField(1)
  String? get nome;
  @override
  @HiveField(2)
  String? get descricao;
  @override
  @HiveField(3)
  String? get sugestao;

  /// Create a copy of BNCC
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BNCCImplCopyWith<_$BNCCImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
