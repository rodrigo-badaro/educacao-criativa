// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'secretaria_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SecretariaInfoModel _$SecretariaInfoModelFromJson(Map<String, dynamic> json) {
  return _SecretariaInfoModel.fromJson(json);
}

/// @nodoc
mixin _$SecretariaInfoModel {
  int? get id => throw _privateConstructorUsedError;
  UnidadeModel? get unidade => throw _privateConstructorUsedError;

  /// Serializes this SecretariaInfoModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SecretariaInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SecretariaInfoModelCopyWith<SecretariaInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SecretariaInfoModelCopyWith<$Res> {
  factory $SecretariaInfoModelCopyWith(
          SecretariaInfoModel value, $Res Function(SecretariaInfoModel) then) =
      _$SecretariaInfoModelCopyWithImpl<$Res, SecretariaInfoModel>;
  @useResult
  $Res call({int? id, UnidadeModel? unidade});

  $UnidadeModelCopyWith<$Res>? get unidade;
}

/// @nodoc
class _$SecretariaInfoModelCopyWithImpl<$Res, $Val extends SecretariaInfoModel>
    implements $SecretariaInfoModelCopyWith<$Res> {
  _$SecretariaInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SecretariaInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? unidade = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      unidade: freezed == unidade
          ? _value.unidade
          : unidade // ignore: cast_nullable_to_non_nullable
              as UnidadeModel?,
    ) as $Val);
  }

  /// Create a copy of SecretariaInfoModel
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
}

/// @nodoc
abstract class _$$SecretariaInfoModelImplCopyWith<$Res>
    implements $SecretariaInfoModelCopyWith<$Res> {
  factory _$$SecretariaInfoModelImplCopyWith(_$SecretariaInfoModelImpl value,
          $Res Function(_$SecretariaInfoModelImpl) then) =
      __$$SecretariaInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, UnidadeModel? unidade});

  @override
  $UnidadeModelCopyWith<$Res>? get unidade;
}

/// @nodoc
class __$$SecretariaInfoModelImplCopyWithImpl<$Res>
    extends _$SecretariaInfoModelCopyWithImpl<$Res, _$SecretariaInfoModelImpl>
    implements _$$SecretariaInfoModelImplCopyWith<$Res> {
  __$$SecretariaInfoModelImplCopyWithImpl(_$SecretariaInfoModelImpl _value,
      $Res Function(_$SecretariaInfoModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SecretariaInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? unidade = freezed,
  }) {
    return _then(_$SecretariaInfoModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      unidade: freezed == unidade
          ? _value.unidade
          : unidade // ignore: cast_nullable_to_non_nullable
              as UnidadeModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: secretariaInfoModelType, adapterName: 'SecretariaInfoAdapter')
class _$SecretariaInfoModelImpl implements _SecretariaInfoModel {
  const _$SecretariaInfoModelImpl({this.id, this.unidade});

  factory _$SecretariaInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SecretariaInfoModelImplFromJson(json);

  @override
  final int? id;
  @override
  final UnidadeModel? unidade;

  @override
  String toString() {
    return 'SecretariaInfoModel(id: $id, unidade: $unidade)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SecretariaInfoModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.unidade, unidade) || other.unidade == unidade));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, unidade);

  /// Create a copy of SecretariaInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SecretariaInfoModelImplCopyWith<_$SecretariaInfoModelImpl> get copyWith =>
      __$$SecretariaInfoModelImplCopyWithImpl<_$SecretariaInfoModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SecretariaInfoModelImplToJson(
      this,
    );
  }
}

abstract class _SecretariaInfoModel implements SecretariaInfoModel {
  const factory _SecretariaInfoModel(
      {final int? id, final UnidadeModel? unidade}) = _$SecretariaInfoModelImpl;

  factory _SecretariaInfoModel.fromJson(Map<String, dynamic> json) =
      _$SecretariaInfoModelImpl.fromJson;

  @override
  int? get id;
  @override
  UnidadeModel? get unidade;

  /// Create a copy of SecretariaInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SecretariaInfoModelImplCopyWith<_$SecretariaInfoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
