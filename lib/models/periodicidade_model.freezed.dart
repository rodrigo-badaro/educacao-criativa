// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'periodicidade_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PeriodicidadeModel _$PeriodicidadeModelFromJson(Map<String, dynamic> json) {
  return _PeriodicidadeModel.fromJson(json);
}

/// @nodoc
mixin _$PeriodicidadeModel {
  @HiveField(0)
  int? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get nome => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get descricao => throw _privateConstructorUsedError;

  /// Serializes this PeriodicidadeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PeriodicidadeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PeriodicidadeModelCopyWith<PeriodicidadeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PeriodicidadeModelCopyWith<$Res> {
  factory $PeriodicidadeModelCopyWith(
          PeriodicidadeModel value, $Res Function(PeriodicidadeModel) then) =
      _$PeriodicidadeModelCopyWithImpl<$Res, PeriodicidadeModel>;
  @useResult
  $Res call(
      {@HiveField(0) int? id,
      @HiveField(1) String? nome,
      @HiveField(2) String? descricao});
}

/// @nodoc
class _$PeriodicidadeModelCopyWithImpl<$Res, $Val extends PeriodicidadeModel>
    implements $PeriodicidadeModelCopyWith<$Res> {
  _$PeriodicidadeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PeriodicidadeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nome = freezed,
    Object? descricao = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      nome: freezed == nome
          ? _value.nome
          : nome // ignore: cast_nullable_to_non_nullable
              as String?,
      descricao: freezed == descricao
          ? _value.descricao
          : descricao // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PeriodicidadeModelImplCopyWith<$Res>
    implements $PeriodicidadeModelCopyWith<$Res> {
  factory _$$PeriodicidadeModelImplCopyWith(_$PeriodicidadeModelImpl value,
          $Res Function(_$PeriodicidadeModelImpl) then) =
      __$$PeriodicidadeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int? id,
      @HiveField(1) String? nome,
      @HiveField(2) String? descricao});
}

/// @nodoc
class __$$PeriodicidadeModelImplCopyWithImpl<$Res>
    extends _$PeriodicidadeModelCopyWithImpl<$Res, _$PeriodicidadeModelImpl>
    implements _$$PeriodicidadeModelImplCopyWith<$Res> {
  __$$PeriodicidadeModelImplCopyWithImpl(_$PeriodicidadeModelImpl _value,
      $Res Function(_$PeriodicidadeModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PeriodicidadeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nome = freezed,
    Object? descricao = freezed,
  }) {
    return _then(_$PeriodicidadeModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      nome: freezed == nome
          ? _value.nome
          : nome // ignore: cast_nullable_to_non_nullable
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
@HiveType(typeId: periodicidadeModelType, adapterName: 'PeriodicidadeAdapter')
class _$PeriodicidadeModelImpl implements _PeriodicidadeModel {
  const _$PeriodicidadeModelImpl(
      {@HiveField(0) this.id,
      @HiveField(1) this.nome,
      @HiveField(2) this.descricao});

  factory _$PeriodicidadeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PeriodicidadeModelImplFromJson(json);

  @override
  @HiveField(0)
  final int? id;
  @override
  @HiveField(1)
  final String? nome;
  @override
  @HiveField(2)
  final String? descricao;

  @override
  String toString() {
    return 'PeriodicidadeModel(id: $id, nome: $nome, descricao: $descricao)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PeriodicidadeModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nome, nome) || other.nome == nome) &&
            (identical(other.descricao, descricao) ||
                other.descricao == descricao));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, nome, descricao);

  /// Create a copy of PeriodicidadeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PeriodicidadeModelImplCopyWith<_$PeriodicidadeModelImpl> get copyWith =>
      __$$PeriodicidadeModelImplCopyWithImpl<_$PeriodicidadeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PeriodicidadeModelImplToJson(
      this,
    );
  }
}

abstract class _PeriodicidadeModel implements PeriodicidadeModel {
  const factory _PeriodicidadeModel(
      {@HiveField(0) final int? id,
      @HiveField(1) final String? nome,
      @HiveField(2) final String? descricao}) = _$PeriodicidadeModelImpl;

  factory _PeriodicidadeModel.fromJson(Map<String, dynamic> json) =
      _$PeriodicidadeModelImpl.fromJson;

  @override
  @HiveField(0)
  int? get id;
  @override
  @HiveField(1)
  String? get nome;
  @override
  @HiveField(2)
  String? get descricao;

  /// Create a copy of PeriodicidadeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PeriodicidadeModelImplCopyWith<_$PeriodicidadeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
