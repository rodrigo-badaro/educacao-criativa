// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pedagoga_fagundez_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PedagogaFagundezInfoModel _$PedagogaFagundezInfoModelFromJson(
    Map<String, dynamic> json) {
  return _PedagogaFagundezInfoModel.fromJson(json);
}

/// @nodoc
mixin _$PedagogaFagundezInfoModel {
  int? get id => throw _privateConstructorUsedError;

  /// Serializes this PedagogaFagundezInfoModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PedagogaFagundezInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PedagogaFagundezInfoModelCopyWith<PedagogaFagundezInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PedagogaFagundezInfoModelCopyWith<$Res> {
  factory $PedagogaFagundezInfoModelCopyWith(PedagogaFagundezInfoModel value,
          $Res Function(PedagogaFagundezInfoModel) then) =
      _$PedagogaFagundezInfoModelCopyWithImpl<$Res, PedagogaFagundezInfoModel>;
  @useResult
  $Res call({int? id});
}

/// @nodoc
class _$PedagogaFagundezInfoModelCopyWithImpl<$Res,
        $Val extends PedagogaFagundezInfoModel>
    implements $PedagogaFagundezInfoModelCopyWith<$Res> {
  _$PedagogaFagundezInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PedagogaFagundezInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PedagogaFagundezInfoModelImplCopyWith<$Res>
    implements $PedagogaFagundezInfoModelCopyWith<$Res> {
  factory _$$PedagogaFagundezInfoModelImplCopyWith(
          _$PedagogaFagundezInfoModelImpl value,
          $Res Function(_$PedagogaFagundezInfoModelImpl) then) =
      __$$PedagogaFagundezInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id});
}

/// @nodoc
class __$$PedagogaFagundezInfoModelImplCopyWithImpl<$Res>
    extends _$PedagogaFagundezInfoModelCopyWithImpl<$Res,
        _$PedagogaFagundezInfoModelImpl>
    implements _$$PedagogaFagundezInfoModelImplCopyWith<$Res> {
  __$$PedagogaFagundezInfoModelImplCopyWithImpl(
      _$PedagogaFagundezInfoModelImpl _value,
      $Res Function(_$PedagogaFagundezInfoModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PedagogaFagundezInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$PedagogaFagundezInfoModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(
    typeId: pedagogaFagundezInfoModelType,
    adapterName: 'PedagogaFagundezInfoAdapter')
class _$PedagogaFagundezInfoModelImpl implements _PedagogaFagundezInfoModel {
  const _$PedagogaFagundezInfoModelImpl({this.id});

  factory _$PedagogaFagundezInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PedagogaFagundezInfoModelImplFromJson(json);

  @override
  final int? id;

  @override
  String toString() {
    return 'PedagogaFagundezInfoModel(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PedagogaFagundezInfoModelImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of PedagogaFagundezInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PedagogaFagundezInfoModelImplCopyWith<_$PedagogaFagundezInfoModelImpl>
      get copyWith => __$$PedagogaFagundezInfoModelImplCopyWithImpl<
          _$PedagogaFagundezInfoModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PedagogaFagundezInfoModelImplToJson(
      this,
    );
  }
}

abstract class _PedagogaFagundezInfoModel implements PedagogaFagundezInfoModel {
  const factory _PedagogaFagundezInfoModel({final int? id}) =
      _$PedagogaFagundezInfoModelImpl;

  factory _PedagogaFagundezInfoModel.fromJson(Map<String, dynamic> json) =
      _$PedagogaFagundezInfoModelImpl.fromJson;

  @override
  int? get id;

  /// Create a copy of PedagogaFagundezInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PedagogaFagundezInfoModelImplCopyWith<_$PedagogaFagundezInfoModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
