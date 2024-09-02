// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'formato_notas_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FormatoNotasModel _$FormatoNotasModelFromJson(Map<String, dynamic> json) {
  return _FormatoNotasModel.fromJson(json);
}

/// @nodoc
mixin _$FormatoNotasModel {
  @HiveField(0)
  int? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get nome => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get descricao => throw _privateConstructorUsedError;

  /// Serializes this FormatoNotasModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FormatoNotasModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FormatoNotasModelCopyWith<FormatoNotasModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormatoNotasModelCopyWith<$Res> {
  factory $FormatoNotasModelCopyWith(
          FormatoNotasModel value, $Res Function(FormatoNotasModel) then) =
      _$FormatoNotasModelCopyWithImpl<$Res, FormatoNotasModel>;
  @useResult
  $Res call(
      {@HiveField(0) int? id,
      @HiveField(1) String? nome,
      @HiveField(2) String? descricao});
}

/// @nodoc
class _$FormatoNotasModelCopyWithImpl<$Res, $Val extends FormatoNotasModel>
    implements $FormatoNotasModelCopyWith<$Res> {
  _$FormatoNotasModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FormatoNotasModel
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
abstract class _$$FormatoNotasModelImplCopyWith<$Res>
    implements $FormatoNotasModelCopyWith<$Res> {
  factory _$$FormatoNotasModelImplCopyWith(_$FormatoNotasModelImpl value,
          $Res Function(_$FormatoNotasModelImpl) then) =
      __$$FormatoNotasModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int? id,
      @HiveField(1) String? nome,
      @HiveField(2) String? descricao});
}

/// @nodoc
class __$$FormatoNotasModelImplCopyWithImpl<$Res>
    extends _$FormatoNotasModelCopyWithImpl<$Res, _$FormatoNotasModelImpl>
    implements _$$FormatoNotasModelImplCopyWith<$Res> {
  __$$FormatoNotasModelImplCopyWithImpl(_$FormatoNotasModelImpl _value,
      $Res Function(_$FormatoNotasModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FormatoNotasModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nome = freezed,
    Object? descricao = freezed,
  }) {
    return _then(_$FormatoNotasModelImpl(
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
@HiveType(typeId: formatoNotaModelType, adapterName: 'FormatoNotaModelAdapter')
class _$FormatoNotasModelImpl implements _FormatoNotasModel {
  const _$FormatoNotasModelImpl(
      {@HiveField(0) this.id,
      @HiveField(1) this.nome,
      @HiveField(2) this.descricao});

  factory _$FormatoNotasModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FormatoNotasModelImplFromJson(json);

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
    return 'FormatoNotasModel(id: $id, nome: $nome, descricao: $descricao)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormatoNotasModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nome, nome) || other.nome == nome) &&
            (identical(other.descricao, descricao) ||
                other.descricao == descricao));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, nome, descricao);

  /// Create a copy of FormatoNotasModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FormatoNotasModelImplCopyWith<_$FormatoNotasModelImpl> get copyWith =>
      __$$FormatoNotasModelImplCopyWithImpl<_$FormatoNotasModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FormatoNotasModelImplToJson(
      this,
    );
  }
}

abstract class _FormatoNotasModel implements FormatoNotasModel {
  const factory _FormatoNotasModel(
      {@HiveField(0) final int? id,
      @HiveField(1) final String? nome,
      @HiveField(2) final String? descricao}) = _$FormatoNotasModelImpl;

  factory _FormatoNotasModel.fromJson(Map<String, dynamic> json) =
      _$FormatoNotasModelImpl.fromJson;

  @override
  @HiveField(0)
  int? get id;
  @override
  @HiveField(1)
  String? get nome;
  @override
  @HiveField(2)
  String? get descricao;

  /// Create a copy of FormatoNotasModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FormatoNotasModelImplCopyWith<_$FormatoNotasModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
