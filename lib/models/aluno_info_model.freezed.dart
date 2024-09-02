// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'aluno_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AlunoInfoModel _$AlunoInfoModelFromJson(Map<String, dynamic> json) {
  return _AlunoInfoModel.fromJson(json);
}

/// @nodoc
mixin _$AlunoInfoModel {
  int? get id => throw _privateConstructorUsedError;
  String? get matricula => throw _privateConstructorUsedError;
  @DateTimeAdapter()
  @JsonKey(name: 'data_matricula')
  DateTime? get dataMatricula => throw _privateConstructorUsedError;
  UnidadeModel? get unidade => throw _privateConstructorUsedError;

  /// Serializes this AlunoInfoModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AlunoInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AlunoInfoModelCopyWith<AlunoInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlunoInfoModelCopyWith<$Res> {
  factory $AlunoInfoModelCopyWith(
          AlunoInfoModel value, $Res Function(AlunoInfoModel) then) =
      _$AlunoInfoModelCopyWithImpl<$Res, AlunoInfoModel>;
  @useResult
  $Res call(
      {int? id,
      String? matricula,
      @DateTimeAdapter()
      @JsonKey(name: 'data_matricula')
      DateTime? dataMatricula,
      UnidadeModel? unidade});

  $UnidadeModelCopyWith<$Res>? get unidade;
}

/// @nodoc
class _$AlunoInfoModelCopyWithImpl<$Res, $Val extends AlunoInfoModel>
    implements $AlunoInfoModelCopyWith<$Res> {
  _$AlunoInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AlunoInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? matricula = freezed,
    Object? dataMatricula = freezed,
    Object? unidade = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      matricula: freezed == matricula
          ? _value.matricula
          : matricula // ignore: cast_nullable_to_non_nullable
              as String?,
      dataMatricula: freezed == dataMatricula
          ? _value.dataMatricula
          : dataMatricula // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      unidade: freezed == unidade
          ? _value.unidade
          : unidade // ignore: cast_nullable_to_non_nullable
              as UnidadeModel?,
    ) as $Val);
  }

  /// Create a copy of AlunoInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UnidadeModelCopyWith<$Res>? get unidade {
    if (_value.unidade == null) {
      return null;
    }

    return $UnidadeModelCopyWith<$Res>(_value.unidade!, (value) {
      return _then(_value.copyWith(unidade: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AlunoInfoModelImplCopyWith<$Res>
    implements $AlunoInfoModelCopyWith<$Res> {
  factory _$$AlunoInfoModelImplCopyWith(_$AlunoInfoModelImpl value,
          $Res Function(_$AlunoInfoModelImpl) then) =
      __$$AlunoInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? matricula,
      @DateTimeAdapter()
      @JsonKey(name: 'data_matricula')
      DateTime? dataMatricula,
      UnidadeModel? unidade});

  @override
  $UnidadeModelCopyWith<$Res>? get unidade;
}

/// @nodoc
class __$$AlunoInfoModelImplCopyWithImpl<$Res>
    extends _$AlunoInfoModelCopyWithImpl<$Res, _$AlunoInfoModelImpl>
    implements _$$AlunoInfoModelImplCopyWith<$Res> {
  __$$AlunoInfoModelImplCopyWithImpl(
      _$AlunoInfoModelImpl _value, $Res Function(_$AlunoInfoModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AlunoInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? matricula = freezed,
    Object? dataMatricula = freezed,
    Object? unidade = freezed,
  }) {
    return _then(_$AlunoInfoModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      matricula: freezed == matricula
          ? _value.matricula
          : matricula // ignore: cast_nullable_to_non_nullable
              as String?,
      dataMatricula: freezed == dataMatricula
          ? _value.dataMatricula
          : dataMatricula // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      unidade: freezed == unidade
          ? _value.unidade
          : unidade // ignore: cast_nullable_to_non_nullable
              as UnidadeModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: alunoInfoModelType, adapterName: 'AlunoInfoAdapter')
class _$AlunoInfoModelImpl implements _AlunoInfoModel {
  const _$AlunoInfoModelImpl(
      {this.id,
      this.matricula,
      @DateTimeAdapter() @JsonKey(name: 'data_matricula') this.dataMatricula,
      this.unidade});

  factory _$AlunoInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AlunoInfoModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? matricula;
  @override
  @DateTimeAdapter()
  @JsonKey(name: 'data_matricula')
  final DateTime? dataMatricula;
  @override
  final UnidadeModel? unidade;

  @override
  String toString() {
    return 'AlunoInfoModel(id: $id, matricula: $matricula, dataMatricula: $dataMatricula, unidade: $unidade)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlunoInfoModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.matricula, matricula) ||
                other.matricula == matricula) &&
            (identical(other.dataMatricula, dataMatricula) ||
                other.dataMatricula == dataMatricula) &&
            (identical(other.unidade, unidade) || other.unidade == unidade));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, matricula, dataMatricula, unidade);

  /// Create a copy of AlunoInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AlunoInfoModelImplCopyWith<_$AlunoInfoModelImpl> get copyWith =>
      __$$AlunoInfoModelImplCopyWithImpl<_$AlunoInfoModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlunoInfoModelImplToJson(
      this,
    );
  }
}

abstract class _AlunoInfoModel implements AlunoInfoModel {
  const factory _AlunoInfoModel(
      {final int? id,
      final String? matricula,
      @DateTimeAdapter()
      @JsonKey(name: 'data_matricula')
      final DateTime? dataMatricula,
      final UnidadeModel? unidade}) = _$AlunoInfoModelImpl;

  factory _AlunoInfoModel.fromJson(Map<String, dynamic> json) =
      _$AlunoInfoModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get matricula;
  @override
  @DateTimeAdapter()
  @JsonKey(name: 'data_matricula')
  DateTime? get dataMatricula;
  @override
  UnidadeModel? get unidade;

  /// Create a copy of AlunoInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AlunoInfoModelImplCopyWith<_$AlunoInfoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
