// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tipo_de_unidade_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TipoDeUnidadeModel _$TipoDeUnidadeModelFromJson(Map<String, dynamic> json) {
  return _TipoDeUnidadeModel.fromJson(json);
}

/// @nodoc
mixin _$TipoDeUnidadeModel {
  @HiveField(0)
  int? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get nome => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get descricao => throw _privateConstructorUsedError;

  /// Serializes this TipoDeUnidadeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TipoDeUnidadeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TipoDeUnidadeModelCopyWith<TipoDeUnidadeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TipoDeUnidadeModelCopyWith<$Res> {
  factory $TipoDeUnidadeModelCopyWith(
          TipoDeUnidadeModel value, $Res Function(TipoDeUnidadeModel) then) =
      _$TipoDeUnidadeModelCopyWithImpl<$Res, TipoDeUnidadeModel>;
  @useResult
  $Res call(
      {@HiveField(0) int? id,
      @HiveField(1) String? nome,
      @HiveField(2) String? descricao});
}

/// @nodoc
class _$TipoDeUnidadeModelCopyWithImpl<$Res, $Val extends TipoDeUnidadeModel>
    implements $TipoDeUnidadeModelCopyWith<$Res> {
  _$TipoDeUnidadeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TipoDeUnidadeModel
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
abstract class _$$TipoDeUnidadeModelImplCopyWith<$Res>
    implements $TipoDeUnidadeModelCopyWith<$Res> {
  factory _$$TipoDeUnidadeModelImplCopyWith(_$TipoDeUnidadeModelImpl value,
          $Res Function(_$TipoDeUnidadeModelImpl) then) =
      __$$TipoDeUnidadeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int? id,
      @HiveField(1) String? nome,
      @HiveField(2) String? descricao});
}

/// @nodoc
class __$$TipoDeUnidadeModelImplCopyWithImpl<$Res>
    extends _$TipoDeUnidadeModelCopyWithImpl<$Res, _$TipoDeUnidadeModelImpl>
    implements _$$TipoDeUnidadeModelImplCopyWith<$Res> {
  __$$TipoDeUnidadeModelImplCopyWithImpl(_$TipoDeUnidadeModelImpl _value,
      $Res Function(_$TipoDeUnidadeModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TipoDeUnidadeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nome = freezed,
    Object? descricao = freezed,
  }) {
    return _then(_$TipoDeUnidadeModelImpl(
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
@HiveType(
    typeId: tipoDeUnidadeModelType, adapterName: 'TipoDeUnidadeModelAdapter')
class _$TipoDeUnidadeModelImpl implements _TipoDeUnidadeModel {
  const _$TipoDeUnidadeModelImpl(
      {@HiveField(0) this.id,
      @HiveField(1) this.nome,
      @HiveField(2) this.descricao});

  factory _$TipoDeUnidadeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TipoDeUnidadeModelImplFromJson(json);

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
    return 'TipoDeUnidadeModel(id: $id, nome: $nome, descricao: $descricao)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TipoDeUnidadeModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nome, nome) || other.nome == nome) &&
            (identical(other.descricao, descricao) ||
                other.descricao == descricao));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, nome, descricao);

  /// Create a copy of TipoDeUnidadeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TipoDeUnidadeModelImplCopyWith<_$TipoDeUnidadeModelImpl> get copyWith =>
      __$$TipoDeUnidadeModelImplCopyWithImpl<_$TipoDeUnidadeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TipoDeUnidadeModelImplToJson(
      this,
    );
  }
}

abstract class _TipoDeUnidadeModel implements TipoDeUnidadeModel {
  const factory _TipoDeUnidadeModel(
      {@HiveField(0) final int? id,
      @HiveField(1) final String? nome,
      @HiveField(2) final String? descricao}) = _$TipoDeUnidadeModelImpl;

  factory _TipoDeUnidadeModel.fromJson(Map<String, dynamic> json) =
      _$TipoDeUnidadeModelImpl.fromJson;

  @override
  @HiveField(0)
  int? get id;
  @override
  @HiveField(1)
  String? get nome;
  @override
  @HiveField(2)
  String? get descricao;

  /// Create a copy of TipoDeUnidadeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TipoDeUnidadeModelImplCopyWith<_$TipoDeUnidadeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
