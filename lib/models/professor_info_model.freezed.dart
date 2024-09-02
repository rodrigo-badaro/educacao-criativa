// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'professor_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProfessorInfoModel _$ProfessorInfoModelFromJson(Map<String, dynamic> json) {
  return _ProfessorInfoModel.fromJson(json);
}

/// @nodoc
mixin _$ProfessorInfoModel {
  List<UnidadeModel>? get unidades => throw _privateConstructorUsedError;
  String? get matricula => throw _privateConstructorUsedError;

  /// Serializes this ProfessorInfoModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfessorInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfessorInfoModelCopyWith<ProfessorInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfessorInfoModelCopyWith<$Res> {
  factory $ProfessorInfoModelCopyWith(
          ProfessorInfoModel value, $Res Function(ProfessorInfoModel) then) =
      _$ProfessorInfoModelCopyWithImpl<$Res, ProfessorInfoModel>;
  @useResult
  $Res call({List<UnidadeModel>? unidades, String? matricula});
}

/// @nodoc
class _$ProfessorInfoModelCopyWithImpl<$Res, $Val extends ProfessorInfoModel>
    implements $ProfessorInfoModelCopyWith<$Res> {
  _$ProfessorInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfessorInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unidades = freezed,
    Object? matricula = freezed,
  }) {
    return _then(_value.copyWith(
      unidades: freezed == unidades
          ? _value.unidades
          : unidades // ignore: cast_nullable_to_non_nullable
              as List<UnidadeModel>?,
      matricula: freezed == matricula
          ? _value.matricula
          : matricula // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfessorInfoModelImplCopyWith<$Res>
    implements $ProfessorInfoModelCopyWith<$Res> {
  factory _$$ProfessorInfoModelImplCopyWith(_$ProfessorInfoModelImpl value,
          $Res Function(_$ProfessorInfoModelImpl) then) =
      __$$ProfessorInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<UnidadeModel>? unidades, String? matricula});
}

/// @nodoc
class __$$ProfessorInfoModelImplCopyWithImpl<$Res>
    extends _$ProfessorInfoModelCopyWithImpl<$Res, _$ProfessorInfoModelImpl>
    implements _$$ProfessorInfoModelImplCopyWith<$Res> {
  __$$ProfessorInfoModelImplCopyWithImpl(_$ProfessorInfoModelImpl _value,
      $Res Function(_$ProfessorInfoModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfessorInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unidades = freezed,
    Object? matricula = freezed,
  }) {
    return _then(_$ProfessorInfoModelImpl(
      unidades: freezed == unidades
          ? _value._unidades
          : unidades // ignore: cast_nullable_to_non_nullable
              as List<UnidadeModel>?,
      matricula: freezed == matricula
          ? _value.matricula
          : matricula // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: professorInfoModelType, adapterName: 'ProfessorInfoAdapter')
class _$ProfessorInfoModelImpl implements _ProfessorInfoModel {
  const _$ProfessorInfoModelImpl(
      {final List<UnidadeModel>? unidades, this.matricula})
      : _unidades = unidades;

  factory _$ProfessorInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfessorInfoModelImplFromJson(json);

  final List<UnidadeModel>? _unidades;
  @override
  List<UnidadeModel>? get unidades {
    final value = _unidades;
    if (value == null) return null;
    if (_unidades is EqualUnmodifiableListView) return _unidades;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? matricula;

  @override
  String toString() {
    return 'ProfessorInfoModel(unidades: $unidades, matricula: $matricula)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfessorInfoModelImpl &&
            const DeepCollectionEquality().equals(other._unidades, _unidades) &&
            (identical(other.matricula, matricula) ||
                other.matricula == matricula));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_unidades), matricula);

  /// Create a copy of ProfessorInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfessorInfoModelImplCopyWith<_$ProfessorInfoModelImpl> get copyWith =>
      __$$ProfessorInfoModelImplCopyWithImpl<_$ProfessorInfoModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfessorInfoModelImplToJson(
      this,
    );
  }
}

abstract class _ProfessorInfoModel implements ProfessorInfoModel {
  const factory _ProfessorInfoModel(
      {final List<UnidadeModel>? unidades,
      final String? matricula}) = _$ProfessorInfoModelImpl;

  factory _ProfessorInfoModel.fromJson(Map<String, dynamic> json) =
      _$ProfessorInfoModelImpl.fromJson;

  @override
  List<UnidadeModel>? get unidades;
  @override
  String? get matricula;

  /// Create a copy of ProfessorInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfessorInfoModelImplCopyWith<_$ProfessorInfoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
