// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'master_cliente_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MasterClienteInfoModel _$MasterClienteInfoModelFromJson(
    Map<String, dynamic> json) {
  return _MasterClienteInfoModel.fromJson(json);
}

/// @nodoc
mixin _$MasterClienteInfoModel {
  int? get id => throw _privateConstructorUsedError;

  /// Serializes this MasterClienteInfoModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MasterClienteInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MasterClienteInfoModelCopyWith<MasterClienteInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MasterClienteInfoModelCopyWith<$Res> {
  factory $MasterClienteInfoModelCopyWith(MasterClienteInfoModel value,
          $Res Function(MasterClienteInfoModel) then) =
      _$MasterClienteInfoModelCopyWithImpl<$Res, MasterClienteInfoModel>;
  @useResult
  $Res call({int? id});
}

/// @nodoc
class _$MasterClienteInfoModelCopyWithImpl<$Res,
        $Val extends MasterClienteInfoModel>
    implements $MasterClienteInfoModelCopyWith<$Res> {
  _$MasterClienteInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MasterClienteInfoModel
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
abstract class _$$MasterClienteInfoModelImplCopyWith<$Res>
    implements $MasterClienteInfoModelCopyWith<$Res> {
  factory _$$MasterClienteInfoModelImplCopyWith(
          _$MasterClienteInfoModelImpl value,
          $Res Function(_$MasterClienteInfoModelImpl) then) =
      __$$MasterClienteInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id});
}

/// @nodoc
class __$$MasterClienteInfoModelImplCopyWithImpl<$Res>
    extends _$MasterClienteInfoModelCopyWithImpl<$Res,
        _$MasterClienteInfoModelImpl>
    implements _$$MasterClienteInfoModelImplCopyWith<$Res> {
  __$$MasterClienteInfoModelImplCopyWithImpl(
      _$MasterClienteInfoModelImpl _value,
      $Res Function(_$MasterClienteInfoModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MasterClienteInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$MasterClienteInfoModelImpl(
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
    typeId: masterClienteInfoModelType, adapterName: 'MasterClienteInfoAdapter')
class _$MasterClienteInfoModelImpl implements _MasterClienteInfoModel {
  const _$MasterClienteInfoModelImpl({this.id});

  factory _$MasterClienteInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MasterClienteInfoModelImplFromJson(json);

  @override
  final int? id;

  @override
  String toString() {
    return 'MasterClienteInfoModel(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MasterClienteInfoModelImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of MasterClienteInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MasterClienteInfoModelImplCopyWith<_$MasterClienteInfoModelImpl>
      get copyWith => __$$MasterClienteInfoModelImplCopyWithImpl<
          _$MasterClienteInfoModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MasterClienteInfoModelImplToJson(
      this,
    );
  }
}

abstract class _MasterClienteInfoModel implements MasterClienteInfoModel {
  const factory _MasterClienteInfoModel({final int? id}) =
      _$MasterClienteInfoModelImpl;

  factory _MasterClienteInfoModel.fromJson(Map<String, dynamic> json) =
      _$MasterClienteInfoModelImpl.fromJson;

  @override
  int? get id;

  /// Create a copy of MasterClienteInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MasterClienteInfoModelImplCopyWith<_$MasterClienteInfoModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
