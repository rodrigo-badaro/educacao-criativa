// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pedagoga_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PedagogaInfoModel _$PedagogaInfoModelFromJson(Map<String, dynamic> json) {
  return _PedagogaInfoModel.fromJson(json);
}

/// @nodoc
mixin _$PedagogaInfoModel {
  int? get id => throw _privateConstructorUsedError;
  List<UnidadeModel>? get unidades => throw _privateConstructorUsedError;

  /// Serializes this PedagogaInfoModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PedagogaInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PedagogaInfoModelCopyWith<PedagogaInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PedagogaInfoModelCopyWith<$Res> {
  factory $PedagogaInfoModelCopyWith(
          PedagogaInfoModel value, $Res Function(PedagogaInfoModel) then) =
      _$PedagogaInfoModelCopyWithImpl<$Res, PedagogaInfoModel>;
  @useResult
  $Res call({int? id, List<UnidadeModel>? unidades});
}

/// @nodoc
class _$PedagogaInfoModelCopyWithImpl<$Res, $Val extends PedagogaInfoModel>
    implements $PedagogaInfoModelCopyWith<$Res> {
  _$PedagogaInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PedagogaInfoModel
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
abstract class _$$PedagogaInfoModelImplCopyWith<$Res>
    implements $PedagogaInfoModelCopyWith<$Res> {
  factory _$$PedagogaInfoModelImplCopyWith(_$PedagogaInfoModelImpl value,
          $Res Function(_$PedagogaInfoModelImpl) then) =
      __$$PedagogaInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, List<UnidadeModel>? unidades});
}

/// @nodoc
class __$$PedagogaInfoModelImplCopyWithImpl<$Res>
    extends _$PedagogaInfoModelCopyWithImpl<$Res, _$PedagogaInfoModelImpl>
    implements _$$PedagogaInfoModelImplCopyWith<$Res> {
  __$$PedagogaInfoModelImplCopyWithImpl(_$PedagogaInfoModelImpl _value,
      $Res Function(_$PedagogaInfoModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PedagogaInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? unidades = freezed,
  }) {
    return _then(_$PedagogaInfoModelImpl(
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
@HiveType(typeId: pedagogaInfoModelType, adapterName: 'PedagogaInfoAdapter')
class _$PedagogaInfoModelImpl implements _PedagogaInfoModel {
  const _$PedagogaInfoModelImpl({this.id, final List<UnidadeModel>? unidades})
      : _unidades = unidades;

  factory _$PedagogaInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PedagogaInfoModelImplFromJson(json);

  @override
  final int? id;
  final List<UnidadeModel>? _unidades;
  @override
  List<UnidadeModel>? get unidades {
    final value = _unidades;
    if (value == null) return null;
    if (_unidades is EqualUnmodifiableListView) return _unidades;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PedagogaInfoModel(id: $id, unidades: $unidades)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PedagogaInfoModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._unidades, _unidades));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(_unidades));

  /// Create a copy of PedagogaInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PedagogaInfoModelImplCopyWith<_$PedagogaInfoModelImpl> get copyWith =>
      __$$PedagogaInfoModelImplCopyWithImpl<_$PedagogaInfoModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PedagogaInfoModelImplToJson(
      this,
    );
  }
}

abstract class _PedagogaInfoModel implements PedagogaInfoModel {
  const factory _PedagogaInfoModel(
      {final int? id,
      final List<UnidadeModel>? unidades}) = _$PedagogaInfoModelImpl;

  factory _PedagogaInfoModel.fromJson(Map<String, dynamic> json) =
      _$PedagogaInfoModelImpl.fromJson;

  @override
  int? get id;
  @override
  List<UnidadeModel>? get unidades;

  /// Create a copy of PedagogaInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PedagogaInfoModelImplCopyWith<_$PedagogaInfoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
