// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'modalidade_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ModalidadeModel _$ModalidadeModelFromJson(Map<String, dynamic> json) {
  return _ModalidadeModel.fromJson(json);
}

/// @nodoc
mixin _$ModalidadeModel {
  @HiveField(0)
  int? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get nome => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get descricao => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get sigla => throw _privateConstructorUsedError;
  @HiveField(4)
  @JsonKey(name: 'codigo_bncc')
  String? get codigoBNCC => throw _privateConstructorUsedError;

  /// Serializes this ModalidadeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ModalidadeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ModalidadeModelCopyWith<ModalidadeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModalidadeModelCopyWith<$Res> {
  factory $ModalidadeModelCopyWith(
          ModalidadeModel value, $Res Function(ModalidadeModel) then) =
      _$ModalidadeModelCopyWithImpl<$Res, ModalidadeModel>;
  @useResult
  $Res call(
      {@HiveField(0) int? id,
      @HiveField(1) String? nome,
      @HiveField(2) String? descricao,
      @HiveField(3) String? sigla,
      @HiveField(4) @JsonKey(name: 'codigo_bncc') String? codigoBNCC});
}

/// @nodoc
class _$ModalidadeModelCopyWithImpl<$Res, $Val extends ModalidadeModel>
    implements $ModalidadeModelCopyWith<$Res> {
  _$ModalidadeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ModalidadeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nome = freezed,
    Object? descricao = freezed,
    Object? sigla = freezed,
    Object? codigoBNCC = freezed,
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
      sigla: freezed == sigla
          ? _value.sigla
          : sigla // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoBNCC: freezed == codigoBNCC
          ? _value.codigoBNCC
          : codigoBNCC // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ModalidadeModelImplCopyWith<$Res>
    implements $ModalidadeModelCopyWith<$Res> {
  factory _$$ModalidadeModelImplCopyWith(_$ModalidadeModelImpl value,
          $Res Function(_$ModalidadeModelImpl) then) =
      __$$ModalidadeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int? id,
      @HiveField(1) String? nome,
      @HiveField(2) String? descricao,
      @HiveField(3) String? sigla,
      @HiveField(4) @JsonKey(name: 'codigo_bncc') String? codigoBNCC});
}

/// @nodoc
class __$$ModalidadeModelImplCopyWithImpl<$Res>
    extends _$ModalidadeModelCopyWithImpl<$Res, _$ModalidadeModelImpl>
    implements _$$ModalidadeModelImplCopyWith<$Res> {
  __$$ModalidadeModelImplCopyWithImpl(
      _$ModalidadeModelImpl _value, $Res Function(_$ModalidadeModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ModalidadeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nome = freezed,
    Object? descricao = freezed,
    Object? sigla = freezed,
    Object? codigoBNCC = freezed,
  }) {
    return _then(_$ModalidadeModelImpl(
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
      sigla: freezed == sigla
          ? _value.sigla
          : sigla // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoBNCC: freezed == codigoBNCC
          ? _value.codigoBNCC
          : codigoBNCC // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: modalidadeModelType, adapterName: 'ModalidadeModelAdapter')
class _$ModalidadeModelImpl implements _ModalidadeModel {
  const _$ModalidadeModelImpl(
      {@HiveField(0) this.id,
      @HiveField(1) this.nome,
      @HiveField(2) this.descricao,
      @HiveField(3) this.sigla,
      @HiveField(4) @JsonKey(name: 'codigo_bncc') this.codigoBNCC});

  factory _$ModalidadeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModalidadeModelImplFromJson(json);

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
  @HiveField(3)
  final String? sigla;
  @override
  @HiveField(4)
  @JsonKey(name: 'codigo_bncc')
  final String? codigoBNCC;

  @override
  String toString() {
    return 'ModalidadeModel(id: $id, nome: $nome, descricao: $descricao, sigla: $sigla, codigoBNCC: $codigoBNCC)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModalidadeModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nome, nome) || other.nome == nome) &&
            (identical(other.descricao, descricao) ||
                other.descricao == descricao) &&
            (identical(other.sigla, sigla) || other.sigla == sigla) &&
            (identical(other.codigoBNCC, codigoBNCC) ||
                other.codigoBNCC == codigoBNCC));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, nome, descricao, sigla, codigoBNCC);

  /// Create a copy of ModalidadeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ModalidadeModelImplCopyWith<_$ModalidadeModelImpl> get copyWith =>
      __$$ModalidadeModelImplCopyWithImpl<_$ModalidadeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModalidadeModelImplToJson(
      this,
    );
  }
}

abstract class _ModalidadeModel implements ModalidadeModel {
  const factory _ModalidadeModel(
      {@HiveField(0) final int? id,
      @HiveField(1) final String? nome,
      @HiveField(2) final String? descricao,
      @HiveField(3) final String? sigla,
      @HiveField(4)
      @JsonKey(name: 'codigo_bncc')
      final String? codigoBNCC}) = _$ModalidadeModelImpl;

  factory _ModalidadeModel.fromJson(Map<String, dynamic> json) =
      _$ModalidadeModelImpl.fromJson;

  @override
  @HiveField(0)
  int? get id;
  @override
  @HiveField(1)
  String? get nome;
  @override
  @HiveField(2)
  String? get descricao;
  @override
  @HiveField(3)
  String? get sigla;
  @override
  @HiveField(4)
  @JsonKey(name: 'codigo_bncc')
  String? get codigoBNCC;

  /// Create a copy of ModalidadeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ModalidadeModelImplCopyWith<_$ModalidadeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
