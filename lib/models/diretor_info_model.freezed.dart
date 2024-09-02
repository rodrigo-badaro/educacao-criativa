// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'diretor_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DiretorInfoModel _$DiretorInfoModelFromJson(Map<String, dynamic> json) {
  return _DiretorInfoModel.fromJson(json);
}

/// @nodoc
mixin _$DiretorInfoModel {
  @HiveField(0)
  int? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  List<UnidadeModel>? get unidades => throw _privateConstructorUsedError;

  /// Serializes this DiretorInfoModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DiretorInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DiretorInfoModelCopyWith<DiretorInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiretorInfoModelCopyWith<$Res> {
  factory $DiretorInfoModelCopyWith(
          DiretorInfoModel value, $Res Function(DiretorInfoModel) then) =
      _$DiretorInfoModelCopyWithImpl<$Res, DiretorInfoModel>;
  @useResult
  $Res call(
      {@HiveField(0) int? id, @HiveField(1) List<UnidadeModel>? unidades});
}

/// @nodoc
class _$DiretorInfoModelCopyWithImpl<$Res, $Val extends DiretorInfoModel>
    implements $DiretorInfoModelCopyWith<$Res> {
  _$DiretorInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DiretorInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? unidades = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      unidades: freezed == unidades
          ? _value.unidades
          : unidades // ignore: cast_nullable_to_non_nullable
              as List<UnidadeModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DiretorInfoModelImplCopyWith<$Res>
    implements $DiretorInfoModelCopyWith<$Res> {
  factory _$$DiretorInfoModelImplCopyWith(_$DiretorInfoModelImpl value,
          $Res Function(_$DiretorInfoModelImpl) then) =
      __$$DiretorInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int? id, @HiveField(1) List<UnidadeModel>? unidades});
}

/// @nodoc
class __$$DiretorInfoModelImplCopyWithImpl<$Res>
    extends _$DiretorInfoModelCopyWithImpl<$Res, _$DiretorInfoModelImpl>
    implements _$$DiretorInfoModelImplCopyWith<$Res> {
  __$$DiretorInfoModelImplCopyWithImpl(_$DiretorInfoModelImpl _value,
      $Res Function(_$DiretorInfoModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DiretorInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? unidades = freezed,
  }) {
    return _then(_$DiretorInfoModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      unidades: freezed == unidades
          ? _value._unidades
          : unidades // ignore: cast_nullable_to_non_nullable
              as List<UnidadeModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: diretorInfoModelType, adapterName: 'DiretorInfoAdapter')
class _$DiretorInfoModelImpl implements _DiretorInfoModel {
  const _$DiretorInfoModelImpl(
      {@HiveField(0) this.id, @HiveField(1) final List<UnidadeModel>? unidades})
      : _unidades = unidades;

  factory _$DiretorInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiretorInfoModelImplFromJson(json);

  @override
  @HiveField(0)
  final int? id;
  final List<UnidadeModel>? _unidades;
  @override
  @HiveField(1)
  List<UnidadeModel>? get unidades {
    final value = _unidades;
    if (value == null) return null;
    if (_unidades is EqualUnmodifiableListView) return _unidades;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DiretorInfoModel(id: $id, unidades: $unidades)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiretorInfoModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._unidades, _unidades));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(_unidades));

  /// Create a copy of DiretorInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DiretorInfoModelImplCopyWith<_$DiretorInfoModelImpl> get copyWith =>
      __$$DiretorInfoModelImplCopyWithImpl<_$DiretorInfoModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiretorInfoModelImplToJson(
      this,
    );
  }
}

abstract class _DiretorInfoModel implements DiretorInfoModel {
  const factory _DiretorInfoModel(
          {@HiveField(0) final int? id,
          @HiveField(1) final List<UnidadeModel>? unidades}) =
      _$DiretorInfoModelImpl;

  factory _DiretorInfoModel.fromJson(Map<String, dynamic> json) =
      _$DiretorInfoModelImpl.fromJson;

  @override
  @HiveField(0)
  int? get id;
  @override
  @HiveField(1)
  List<UnidadeModel>? get unidades;

  /// Create a copy of DiretorInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DiretorInfoModelImplCopyWith<_$DiretorInfoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
