// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'administrador_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AdministradorInfoModel _$AdministradorInfoModelFromJson(
    Map<String, dynamic> json) {
  return _AdministradorInfoModel.fromJson(json);
}

/// @nodoc
mixin _$AdministradorInfoModel {
  int? get id => throw _privateConstructorUsedError;
  List<ClienteModel>? get clientes => throw _privateConstructorUsedError;

  /// Serializes this AdministradorInfoModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdministradorInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdministradorInfoModelCopyWith<AdministradorInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdministradorInfoModelCopyWith<$Res> {
  factory $AdministradorInfoModelCopyWith(AdministradorInfoModel value,
          $Res Function(AdministradorInfoModel) then) =
      _$AdministradorInfoModelCopyWithImpl<$Res, AdministradorInfoModel>;
  @useResult
  $Res call({int? id, List<ClienteModel>? clientes});
}

/// @nodoc
class _$AdministradorInfoModelCopyWithImpl<$Res,
        $Val extends AdministradorInfoModel>
    implements $AdministradorInfoModelCopyWith<$Res> {
  _$AdministradorInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdministradorInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? clientes = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      clientes: freezed == clientes
          ? _value.clientes
          : clientes // ignore: cast_nullable_to_non_nullable
              as List<ClienteModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdministradorInfoModelImplCopyWith<$Res>
    implements $AdministradorInfoModelCopyWith<$Res> {
  factory _$$AdministradorInfoModelImplCopyWith(
          _$AdministradorInfoModelImpl value,
          $Res Function(_$AdministradorInfoModelImpl) then) =
      __$$AdministradorInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, List<ClienteModel>? clientes});
}

/// @nodoc
class __$$AdministradorInfoModelImplCopyWithImpl<$Res>
    extends _$AdministradorInfoModelCopyWithImpl<$Res,
        _$AdministradorInfoModelImpl>
    implements _$$AdministradorInfoModelImplCopyWith<$Res> {
  __$$AdministradorInfoModelImplCopyWithImpl(
      _$AdministradorInfoModelImpl _value,
      $Res Function(_$AdministradorInfoModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdministradorInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? clientes = freezed,
  }) {
    return _then(_$AdministradorInfoModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      clientes: freezed == clientes
          ? _value._clientes
          : clientes // ignore: cast_nullable_to_non_nullable
              as List<ClienteModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(
    typeId: administradorInfoModelType, adapterName: 'AdministradorInfoAdapter')
class _$AdministradorInfoModelImpl implements _AdministradorInfoModel {
  const _$AdministradorInfoModelImpl(
      {this.id, final List<ClienteModel>? clientes})
      : _clientes = clientes;

  factory _$AdministradorInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdministradorInfoModelImplFromJson(json);

  @override
  final int? id;
  final List<ClienteModel>? _clientes;
  @override
  List<ClienteModel>? get clientes {
    final value = _clientes;
    if (value == null) return null;
    if (_clientes is EqualUnmodifiableListView) return _clientes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AdministradorInfoModel(id: $id, clientes: $clientes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdministradorInfoModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._clientes, _clientes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(_clientes));

  /// Create a copy of AdministradorInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdministradorInfoModelImplCopyWith<_$AdministradorInfoModelImpl>
      get copyWith => __$$AdministradorInfoModelImplCopyWithImpl<
          _$AdministradorInfoModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdministradorInfoModelImplToJson(
      this,
    );
  }
}

abstract class _AdministradorInfoModel implements AdministradorInfoModel {
  const factory _AdministradorInfoModel(
      {final int? id,
      final List<ClienteModel>? clientes}) = _$AdministradorInfoModelImpl;

  factory _AdministradorInfoModel.fromJson(Map<String, dynamic> json) =
      _$AdministradorInfoModelImpl.fromJson;

  @override
  int? get id;
  @override
  List<ClienteModel>? get clientes;

  /// Create a copy of AdministradorInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdministradorInfoModelImplCopyWith<_$AdministradorInfoModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
