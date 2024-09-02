// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'material_apoio_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MaterialApoioModel _$MaterialApoioModelFromJson(Map<String, dynamic> json) {
  return _MaterialApoio.fromJson(json);
}

/// @nodoc
mixin _$MaterialApoioModel {
  @HiveField(0)
  int? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  @MaterialApoioNomeConverter()
  MaterialApoioNome? get nome => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get url => throw _privateConstructorUsedError;
  @DateTimeAdapter()
  @HiveField(3)
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @DateTimeAdapter()
  @HiveField(4)
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this MaterialApoioModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MaterialApoioModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MaterialApoioModelCopyWith<MaterialApoioModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MaterialApoioModelCopyWith<$Res> {
  factory $MaterialApoioModelCopyWith(
          MaterialApoioModel value, $Res Function(MaterialApoioModel) then) =
      _$MaterialApoioModelCopyWithImpl<$Res, MaterialApoioModel>;
  @useResult
  $Res call(
      {@HiveField(0) int? id,
      @HiveField(1) @MaterialApoioNomeConverter() MaterialApoioNome? nome,
      @HiveField(2) String? url,
      @DateTimeAdapter()
      @HiveField(3)
      @JsonKey(name: 'created_at')
      DateTime? createdAt,
      @DateTimeAdapter()
      @HiveField(4)
      @JsonKey(name: 'updated_at')
      DateTime? updatedAt});
}

/// @nodoc
class _$MaterialApoioModelCopyWithImpl<$Res, $Val extends MaterialApoioModel>
    implements $MaterialApoioModelCopyWith<$Res> {
  _$MaterialApoioModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MaterialApoioModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nome = freezed,
    Object? url = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      nome: freezed == nome
          ? _value.nome
          : nome // ignore: cast_nullable_to_non_nullable
              as MaterialApoioNome?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MaterialApoioImplCopyWith<$Res>
    implements $MaterialApoioModelCopyWith<$Res> {
  factory _$$MaterialApoioImplCopyWith(
          _$MaterialApoioImpl value, $Res Function(_$MaterialApoioImpl) then) =
      __$$MaterialApoioImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int? id,
      @HiveField(1) @MaterialApoioNomeConverter() MaterialApoioNome? nome,
      @HiveField(2) String? url,
      @DateTimeAdapter()
      @HiveField(3)
      @JsonKey(name: 'created_at')
      DateTime? createdAt,
      @DateTimeAdapter()
      @HiveField(4)
      @JsonKey(name: 'updated_at')
      DateTime? updatedAt});
}

/// @nodoc
class __$$MaterialApoioImplCopyWithImpl<$Res>
    extends _$MaterialApoioModelCopyWithImpl<$Res, _$MaterialApoioImpl>
    implements _$$MaterialApoioImplCopyWith<$Res> {
  __$$MaterialApoioImplCopyWithImpl(
      _$MaterialApoioImpl _value, $Res Function(_$MaterialApoioImpl) _then)
      : super(_value, _then);

  /// Create a copy of MaterialApoioModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nome = freezed,
    Object? url = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$MaterialApoioImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      nome: freezed == nome
          ? _value.nome
          : nome // ignore: cast_nullable_to_non_nullable
              as MaterialApoioNome?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: materialApoioModelType, adapterName: 'MaterialApoioAdapter')
class _$MaterialApoioImpl implements _MaterialApoio {
  const _$MaterialApoioImpl(
      {@HiveField(0) this.id,
      @HiveField(1) @MaterialApoioNomeConverter() this.nome,
      @HiveField(2) this.url,
      @DateTimeAdapter()
      @HiveField(3)
      @JsonKey(name: 'created_at')
      this.createdAt,
      @DateTimeAdapter()
      @HiveField(4)
      @JsonKey(name: 'updated_at')
      this.updatedAt});

  factory _$MaterialApoioImpl.fromJson(Map<String, dynamic> json) =>
      _$$MaterialApoioImplFromJson(json);

  @override
  @HiveField(0)
  final int? id;
  @override
  @HiveField(1)
  @MaterialApoioNomeConverter()
  final MaterialApoioNome? nome;
  @override
  @HiveField(2)
  final String? url;
  @override
  @DateTimeAdapter()
  @HiveField(3)
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @DateTimeAdapter()
  @HiveField(4)
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'MaterialApoioModel(id: $id, nome: $nome, url: $url, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaterialApoioImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nome, nome) || other.nome == nome) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, nome, url, createdAt, updatedAt);

  /// Create a copy of MaterialApoioModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MaterialApoioImplCopyWith<_$MaterialApoioImpl> get copyWith =>
      __$$MaterialApoioImplCopyWithImpl<_$MaterialApoioImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MaterialApoioImplToJson(
      this,
    );
  }
}

abstract class _MaterialApoio implements MaterialApoioModel {
  const factory _MaterialApoio(
      {@HiveField(0) final int? id,
      @HiveField(1) @MaterialApoioNomeConverter() final MaterialApoioNome? nome,
      @HiveField(2) final String? url,
      @DateTimeAdapter()
      @HiveField(3)
      @JsonKey(name: 'created_at')
      final DateTime? createdAt,
      @DateTimeAdapter()
      @HiveField(4)
      @JsonKey(name: 'updated_at')
      final DateTime? updatedAt}) = _$MaterialApoioImpl;

  factory _MaterialApoio.fromJson(Map<String, dynamic> json) =
      _$MaterialApoioImpl.fromJson;

  @override
  @HiveField(0)
  int? get id;
  @override
  @HiveField(1)
  @MaterialApoioNomeConverter()
  MaterialApoioNome? get nome;
  @override
  @HiveField(2)
  String? get url;
  @override
  @DateTimeAdapter()
  @HiveField(3)
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @DateTimeAdapter()
  @HiveField(4)
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;

  /// Create a copy of MaterialApoioModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MaterialApoioImplCopyWith<_$MaterialApoioImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
