// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'serie_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SerieModel _$SerieModelFromJson(Map<String, dynamic> json) {
  return _SerieModel.fromJson(json);
}

/// @nodoc
mixin _$SerieModel {
  @HiveField(0)
  int? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get nome => throw _privateConstructorUsedError;
  @HiveField(2)
  int? get numero => throw _privateConstructorUsedError;
  @HiveField(3)
  ModalidadeModel? get modalidade => throw _privateConstructorUsedError;
  @HiveField(4)
  @JsonKey(name: 'codigo_bncc')
  String? get codigoBNCC => throw _privateConstructorUsedError;

  /// Serializes this SerieModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SerieModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SerieModelCopyWith<SerieModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SerieModelCopyWith<$Res> {
  factory $SerieModelCopyWith(
          SerieModel value, $Res Function(SerieModel) then) =
      _$SerieModelCopyWithImpl<$Res, SerieModel>;
  @useResult
  $Res call(
      {@HiveField(0) int? id,
      @HiveField(1) String? nome,
      @HiveField(2) int? numero,
      @HiveField(3) ModalidadeModel? modalidade,
      @HiveField(4) @JsonKey(name: 'codigo_bncc') String? codigoBNCC});

  $ModalidadeModelCopyWith<$Res>? get modalidade;
}

/// @nodoc
class _$SerieModelCopyWithImpl<$Res, $Val extends SerieModel>
    implements $SerieModelCopyWith<$Res> {
  _$SerieModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SerieModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nome = freezed,
    Object? numero = freezed,
    Object? modalidade = freezed,
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
      numero: freezed == numero
          ? _value.numero
          : numero // ignore: cast_nullable_to_non_nullable
              as int?,
      modalidade: freezed == modalidade
          ? _value.modalidade
          : modalidade // ignore: cast_nullable_to_non_nullable
              as ModalidadeModel?,
      codigoBNCC: freezed == codigoBNCC
          ? _value.codigoBNCC
          : codigoBNCC // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of SerieModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ModalidadeModelCopyWith<$Res>? get modalidade {
    if (_value.modalidade == null) {
      return null;
    }

    return $ModalidadeModelCopyWith<$Res>(_value.modalidade!, (value) {
      return _then(_value.copyWith(modalidade: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SerieModelImplCopyWith<$Res>
    implements $SerieModelCopyWith<$Res> {
  factory _$$SerieModelImplCopyWith(
          _$SerieModelImpl value, $Res Function(_$SerieModelImpl) then) =
      __$$SerieModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int? id,
      @HiveField(1) String? nome,
      @HiveField(2) int? numero,
      @HiveField(3) ModalidadeModel? modalidade,
      @HiveField(4) @JsonKey(name: 'codigo_bncc') String? codigoBNCC});

  @override
  $ModalidadeModelCopyWith<$Res>? get modalidade;
}

/// @nodoc
class __$$SerieModelImplCopyWithImpl<$Res>
    extends _$SerieModelCopyWithImpl<$Res, _$SerieModelImpl>
    implements _$$SerieModelImplCopyWith<$Res> {
  __$$SerieModelImplCopyWithImpl(
      _$SerieModelImpl _value, $Res Function(_$SerieModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SerieModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nome = freezed,
    Object? numero = freezed,
    Object? modalidade = freezed,
    Object? codigoBNCC = freezed,
  }) {
    return _then(_$SerieModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      nome: freezed == nome
          ? _value.nome
          : nome // ignore: cast_nullable_to_non_nullable
              as String?,
      numero: freezed == numero
          ? _value.numero
          : numero // ignore: cast_nullable_to_non_nullable
              as int?,
      modalidade: freezed == modalidade
          ? _value.modalidade
          : modalidade // ignore: cast_nullable_to_non_nullable
              as ModalidadeModel?,
      codigoBNCC: freezed == codigoBNCC
          ? _value.codigoBNCC
          : codigoBNCC // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: serieModelType, adapterName: 'SerieModelAdapter')
class _$SerieModelImpl implements _SerieModel {
  const _$SerieModelImpl(
      {@HiveField(0) this.id,
      @HiveField(1) this.nome,
      @HiveField(2) this.numero,
      @HiveField(3) this.modalidade,
      @HiveField(4) @JsonKey(name: 'codigo_bncc') this.codigoBNCC});

  factory _$SerieModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SerieModelImplFromJson(json);

  @override
  @HiveField(0)
  final int? id;
  @override
  @HiveField(1)
  final String? nome;
  @override
  @HiveField(2)
  final int? numero;
  @override
  @HiveField(3)
  final ModalidadeModel? modalidade;
  @override
  @HiveField(4)
  @JsonKey(name: 'codigo_bncc')
  final String? codigoBNCC;

  @override
  String toString() {
    return 'SerieModel(id: $id, nome: $nome, numero: $numero, modalidade: $modalidade, codigoBNCC: $codigoBNCC)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SerieModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nome, nome) || other.nome == nome) &&
            (identical(other.numero, numero) || other.numero == numero) &&
            (identical(other.modalidade, modalidade) ||
                other.modalidade == modalidade) &&
            (identical(other.codigoBNCC, codigoBNCC) ||
                other.codigoBNCC == codigoBNCC));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, nome, numero, modalidade, codigoBNCC);

  /// Create a copy of SerieModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SerieModelImplCopyWith<_$SerieModelImpl> get copyWith =>
      __$$SerieModelImplCopyWithImpl<_$SerieModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SerieModelImplToJson(
      this,
    );
  }
}

abstract class _SerieModel implements SerieModel {
  const factory _SerieModel(
      {@HiveField(0) final int? id,
      @HiveField(1) final String? nome,
      @HiveField(2) final int? numero,
      @HiveField(3) final ModalidadeModel? modalidade,
      @HiveField(4)
      @JsonKey(name: 'codigo_bncc')
      final String? codigoBNCC}) = _$SerieModelImpl;

  factory _SerieModel.fromJson(Map<String, dynamic> json) =
      _$SerieModelImpl.fromJson;

  @override
  @HiveField(0)
  int? get id;
  @override
  @HiveField(1)
  String? get nome;
  @override
  @HiveField(2)
  int? get numero;
  @override
  @HiveField(3)
  ModalidadeModel? get modalidade;
  @override
  @HiveField(4)
  @JsonKey(name: 'codigo_bncc')
  String? get codigoBNCC;

  /// Create a copy of SerieModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SerieModelImplCopyWith<_$SerieModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
