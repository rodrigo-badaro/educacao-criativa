// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deficiencia_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeficienciaModel _$DeficienciaModelFromJson(Map<String, dynamic> json) {
  return _DeficienciaModel.fromJson(json);
}

/// @nodoc
mixin _$DeficienciaModel {
  @HiveField(0)
  int? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get tipo => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get descricao => throw _privateConstructorUsedError;

  /// Serializes this DeficienciaModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeficienciaModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeficienciaModelCopyWith<DeficienciaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeficienciaModelCopyWith<$Res> {
  factory $DeficienciaModelCopyWith(
          DeficienciaModel value, $Res Function(DeficienciaModel) then) =
      _$DeficienciaModelCopyWithImpl<$Res, DeficienciaModel>;
  @useResult
  $Res call(
      {@HiveField(0) int? id,
      @HiveField(1) String? tipo,
      @HiveField(2) String? descricao});
}

/// @nodoc
class _$DeficienciaModelCopyWithImpl<$Res, $Val extends DeficienciaModel>
    implements $DeficienciaModelCopyWith<$Res> {
  _$DeficienciaModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeficienciaModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? tipo = freezed,
    Object? descricao = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      tipo: freezed == tipo
          ? _value.tipo
          : tipo // ignore: cast_nullable_to_non_nullable
              as String?,
      descricao: freezed == descricao
          ? _value.descricao
          : descricao // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeficienciaModelImplCopyWith<$Res>
    implements $DeficienciaModelCopyWith<$Res> {
  factory _$$DeficienciaModelImplCopyWith(_$DeficienciaModelImpl value,
          $Res Function(_$DeficienciaModelImpl) then) =
      __$$DeficienciaModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int? id,
      @HiveField(1) String? tipo,
      @HiveField(2) String? descricao});
}

/// @nodoc
class __$$DeficienciaModelImplCopyWithImpl<$Res>
    extends _$DeficienciaModelCopyWithImpl<$Res, _$DeficienciaModelImpl>
    implements _$$DeficienciaModelImplCopyWith<$Res> {
  __$$DeficienciaModelImplCopyWithImpl(_$DeficienciaModelImpl _value,
      $Res Function(_$DeficienciaModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeficienciaModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? tipo = freezed,
    Object? descricao = freezed,
  }) {
    return _then(_$DeficienciaModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      tipo: freezed == tipo
          ? _value.tipo
          : tipo // ignore: cast_nullable_to_non_nullable
              as String?,
      descricao: freezed == descricao
          ? _value.descricao
          : descricao // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: deficienciaModelType, adapterName: 'DeficienciaModelAdapter')
class _$DeficienciaModelImpl implements _DeficienciaModel {
  const _$DeficienciaModelImpl(
      {@HiveField(0) this.id,
      @HiveField(1) this.tipo,
      @HiveField(2) this.descricao});

  factory _$DeficienciaModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeficienciaModelImplFromJson(json);

  @override
  @HiveField(0)
  final int? id;
  @override
  @HiveField(1)
  final String? tipo;
  @override
  @HiveField(2)
  final String? descricao;

  @override
  String toString() {
    return 'DeficienciaModel(id: $id, tipo: $tipo, descricao: $descricao)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeficienciaModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.tipo, tipo) || other.tipo == tipo) &&
            (identical(other.descricao, descricao) ||
                other.descricao == descricao));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, tipo, descricao);

  /// Create a copy of DeficienciaModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeficienciaModelImplCopyWith<_$DeficienciaModelImpl> get copyWith =>
      __$$DeficienciaModelImplCopyWithImpl<_$DeficienciaModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeficienciaModelImplToJson(
      this,
    );
  }
}

abstract class _DeficienciaModel implements DeficienciaModel {
  const factory _DeficienciaModel(
      {@HiveField(0) final int? id,
      @HiveField(1) final String? tipo,
      @HiveField(2) final String? descricao}) = _$DeficienciaModelImpl;

  factory _DeficienciaModel.fromJson(Map<String, dynamic> json) =
      _$DeficienciaModelImpl.fromJson;

  @override
  @HiveField(0)
  int? get id;
  @override
  @HiveField(1)
  String? get tipo;
  @override
  @HiveField(2)
  String? get descricao;

  /// Create a copy of DeficienciaModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeficienciaModelImplCopyWith<_$DeficienciaModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
