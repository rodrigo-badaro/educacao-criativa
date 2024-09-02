// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'telefone_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TelefoneModel _$TelefoneModelFromJson(Map<String, dynamic> json) {
  return _TelefoneModel.fromJson(json);
}

/// @nodoc
mixin _$TelefoneModel {
  @HiveField(0)
  int? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get numero => throw _privateConstructorUsedError;

  /// Serializes this TelefoneModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TelefoneModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TelefoneModelCopyWith<TelefoneModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TelefoneModelCopyWith<$Res> {
  factory $TelefoneModelCopyWith(
          TelefoneModel value, $Res Function(TelefoneModel) then) =
      _$TelefoneModelCopyWithImpl<$Res, TelefoneModel>;
  @useResult
  $Res call({@HiveField(0) int? id, @HiveField(1) String? numero});
}

/// @nodoc
class _$TelefoneModelCopyWithImpl<$Res, $Val extends TelefoneModel>
    implements $TelefoneModelCopyWith<$Res> {
  _$TelefoneModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TelefoneModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? numero = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      numero: freezed == numero
          ? _value.numero
          : numero // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TelefoneModelImplCopyWith<$Res>
    implements $TelefoneModelCopyWith<$Res> {
  factory _$$TelefoneModelImplCopyWith(
          _$TelefoneModelImpl value, $Res Function(_$TelefoneModelImpl) then) =
      __$$TelefoneModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@HiveField(0) int? id, @HiveField(1) String? numero});
}

/// @nodoc
class __$$TelefoneModelImplCopyWithImpl<$Res>
    extends _$TelefoneModelCopyWithImpl<$Res, _$TelefoneModelImpl>
    implements _$$TelefoneModelImplCopyWith<$Res> {
  __$$TelefoneModelImplCopyWithImpl(
      _$TelefoneModelImpl _value, $Res Function(_$TelefoneModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TelefoneModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? numero = freezed,
  }) {
    return _then(_$TelefoneModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      numero: freezed == numero
          ? _value.numero
          : numero // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: telefoneModelType, adapterName: 'TelefoneModelAdapter')
class _$TelefoneModelImpl implements _TelefoneModel {
  const _$TelefoneModelImpl({@HiveField(0) this.id, @HiveField(1) this.numero});

  factory _$TelefoneModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TelefoneModelImplFromJson(json);

  @override
  @HiveField(0)
  final int? id;
  @override
  @HiveField(1)
  final String? numero;

  @override
  String toString() {
    return 'TelefoneModel(id: $id, numero: $numero)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TelefoneModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.numero, numero) || other.numero == numero));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, numero);

  /// Create a copy of TelefoneModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TelefoneModelImplCopyWith<_$TelefoneModelImpl> get copyWith =>
      __$$TelefoneModelImplCopyWithImpl<_$TelefoneModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TelefoneModelImplToJson(
      this,
    );
  }
}

abstract class _TelefoneModel implements TelefoneModel {
  const factory _TelefoneModel(
      {@HiveField(0) final int? id,
      @HiveField(1) final String? numero}) = _$TelefoneModelImpl;

  factory _TelefoneModel.fromJson(Map<String, dynamic> json) =
      _$TelefoneModelImpl.fromJson;

  @override
  @HiveField(0)
  int? get id;
  @override
  @HiveField(1)
  String? get numero;

  /// Create a copy of TelefoneModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TelefoneModelImplCopyWith<_$TelefoneModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
