// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'endereco_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EnderecoModel _$EnderecoModelFromJson(Map<String, dynamic> json) {
  return _EnderecoModel.fromJson(json);
}

/// @nodoc
mixin _$EnderecoModel {
  @HiveField(0)
  int? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get cep => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get rua => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get numero => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get complemento => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get uf => throw _privateConstructorUsedError;
  @HiveField(6)
  String? get municipio => throw _privateConstructorUsedError;
  @HiveField(7)
  String? get bairro => throw _privateConstructorUsedError;

  /// Serializes this EnderecoModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EnderecoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EnderecoModelCopyWith<EnderecoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnderecoModelCopyWith<$Res> {
  factory $EnderecoModelCopyWith(
          EnderecoModel value, $Res Function(EnderecoModel) then) =
      _$EnderecoModelCopyWithImpl<$Res, EnderecoModel>;
  @useResult
  $Res call(
      {@HiveField(0) int? id,
      @HiveField(1) String? cep,
      @HiveField(2) String? rua,
      @HiveField(3) String? numero,
      @HiveField(4) String? complemento,
      @HiveField(5) String? uf,
      @HiveField(6) String? municipio,
      @HiveField(7) String? bairro});
}

/// @nodoc
class _$EnderecoModelCopyWithImpl<$Res, $Val extends EnderecoModel>
    implements $EnderecoModelCopyWith<$Res> {
  _$EnderecoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EnderecoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? cep = freezed,
    Object? rua = freezed,
    Object? numero = freezed,
    Object? complemento = freezed,
    Object? uf = freezed,
    Object? municipio = freezed,
    Object? bairro = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      cep: freezed == cep
          ? _value.cep
          : cep // ignore: cast_nullable_to_non_nullable
              as String?,
      rua: freezed == rua
          ? _value.rua
          : rua // ignore: cast_nullable_to_non_nullable
              as String?,
      numero: freezed == numero
          ? _value.numero
          : numero // ignore: cast_nullable_to_non_nullable
              as String?,
      complemento: freezed == complemento
          ? _value.complemento
          : complemento // ignore: cast_nullable_to_non_nullable
              as String?,
      uf: freezed == uf
          ? _value.uf
          : uf // ignore: cast_nullable_to_non_nullable
              as String?,
      municipio: freezed == municipio
          ? _value.municipio
          : municipio // ignore: cast_nullable_to_non_nullable
              as String?,
      bairro: freezed == bairro
          ? _value.bairro
          : bairro // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EnderecoModelImplCopyWith<$Res>
    implements $EnderecoModelCopyWith<$Res> {
  factory _$$EnderecoModelImplCopyWith(
          _$EnderecoModelImpl value, $Res Function(_$EnderecoModelImpl) then) =
      __$$EnderecoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int? id,
      @HiveField(1) String? cep,
      @HiveField(2) String? rua,
      @HiveField(3) String? numero,
      @HiveField(4) String? complemento,
      @HiveField(5) String? uf,
      @HiveField(6) String? municipio,
      @HiveField(7) String? bairro});
}

/// @nodoc
class __$$EnderecoModelImplCopyWithImpl<$Res>
    extends _$EnderecoModelCopyWithImpl<$Res, _$EnderecoModelImpl>
    implements _$$EnderecoModelImplCopyWith<$Res> {
  __$$EnderecoModelImplCopyWithImpl(
      _$EnderecoModelImpl _value, $Res Function(_$EnderecoModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of EnderecoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? cep = freezed,
    Object? rua = freezed,
    Object? numero = freezed,
    Object? complemento = freezed,
    Object? uf = freezed,
    Object? municipio = freezed,
    Object? bairro = freezed,
  }) {
    return _then(_$EnderecoModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      cep: freezed == cep
          ? _value.cep
          : cep // ignore: cast_nullable_to_non_nullable
              as String?,
      rua: freezed == rua
          ? _value.rua
          : rua // ignore: cast_nullable_to_non_nullable
              as String?,
      numero: freezed == numero
          ? _value.numero
          : numero // ignore: cast_nullable_to_non_nullable
              as String?,
      complemento: freezed == complemento
          ? _value.complemento
          : complemento // ignore: cast_nullable_to_non_nullable
              as String?,
      uf: freezed == uf
          ? _value.uf
          : uf // ignore: cast_nullable_to_non_nullable
              as String?,
      municipio: freezed == municipio
          ? _value.municipio
          : municipio // ignore: cast_nullable_to_non_nullable
              as String?,
      bairro: freezed == bairro
          ? _value.bairro
          : bairro // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: enderecoModelType, adapterName: 'EnderecoAdapter')
class _$EnderecoModelImpl extends _EnderecoModel {
  const _$EnderecoModelImpl(
      {@HiveField(0) this.id,
      @HiveField(1) this.cep,
      @HiveField(2) this.rua,
      @HiveField(3) this.numero,
      @HiveField(4) this.complemento,
      @HiveField(5) this.uf,
      @HiveField(6) this.municipio,
      @HiveField(7) this.bairro})
      : super._();

  factory _$EnderecoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EnderecoModelImplFromJson(json);

  @override
  @HiveField(0)
  final int? id;
  @override
  @HiveField(1)
  final String? cep;
  @override
  @HiveField(2)
  final String? rua;
  @override
  @HiveField(3)
  final String? numero;
  @override
  @HiveField(4)
  final String? complemento;
  @override
  @HiveField(5)
  final String? uf;
  @override
  @HiveField(6)
  final String? municipio;
  @override
  @HiveField(7)
  final String? bairro;

  @override
  String toString() {
    return 'EnderecoModel(id: $id, cep: $cep, rua: $rua, numero: $numero, complemento: $complemento, uf: $uf, municipio: $municipio, bairro: $bairro)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnderecoModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.cep, cep) || other.cep == cep) &&
            (identical(other.rua, rua) || other.rua == rua) &&
            (identical(other.numero, numero) || other.numero == numero) &&
            (identical(other.complemento, complemento) ||
                other.complemento == complemento) &&
            (identical(other.uf, uf) || other.uf == uf) &&
            (identical(other.municipio, municipio) ||
                other.municipio == municipio) &&
            (identical(other.bairro, bairro) || other.bairro == bairro));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, cep, rua, numero, complemento, uf, municipio, bairro);

  /// Create a copy of EnderecoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EnderecoModelImplCopyWith<_$EnderecoModelImpl> get copyWith =>
      __$$EnderecoModelImplCopyWithImpl<_$EnderecoModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EnderecoModelImplToJson(
      this,
    );
  }
}

abstract class _EnderecoModel extends EnderecoModel {
  const factory _EnderecoModel(
      {@HiveField(0) final int? id,
      @HiveField(1) final String? cep,
      @HiveField(2) final String? rua,
      @HiveField(3) final String? numero,
      @HiveField(4) final String? complemento,
      @HiveField(5) final String? uf,
      @HiveField(6) final String? municipio,
      @HiveField(7) final String? bairro}) = _$EnderecoModelImpl;
  const _EnderecoModel._() : super._();

  factory _EnderecoModel.fromJson(Map<String, dynamic> json) =
      _$EnderecoModelImpl.fromJson;

  @override
  @HiveField(0)
  int? get id;
  @override
  @HiveField(1)
  String? get cep;
  @override
  @HiveField(2)
  String? get rua;
  @override
  @HiveField(3)
  String? get numero;
  @override
  @HiveField(4)
  String? get complemento;
  @override
  @HiveField(5)
  String? get uf;
  @override
  @HiveField(6)
  String? get municipio;
  @override
  @HiveField(7)
  String? get bairro;

  /// Create a copy of EnderecoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EnderecoModelImplCopyWith<_$EnderecoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
