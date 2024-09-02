// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'estacao_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EstacaoModel _$EstacaoModelFromJson(Map<String, dynamic> json) {
  return _EstacaoModel.fromJson(json);
}

/// @nodoc
mixin _$EstacaoModel {
  @HiveField(0)
  int? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get nome => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get descricao => throw _privateConstructorUsedError;
  @HiveField(3)
  @JsonKey(name: 'celula_item')
  List<EstacaoModelItem>? get items => throw _privateConstructorUsedError;

  /// Serializes this EstacaoModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EstacaoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EstacaoModelCopyWith<EstacaoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EstacaoModelCopyWith<$Res> {
  factory $EstacaoModelCopyWith(
          EstacaoModel value, $Res Function(EstacaoModel) then) =
      _$EstacaoModelCopyWithImpl<$Res, EstacaoModel>;
  @useResult
  $Res call(
      {@HiveField(0) int? id,
      @HiveField(1) String? nome,
      @HiveField(2) String? descricao,
      @HiveField(3)
      @JsonKey(name: 'celula_item')
      List<EstacaoModelItem>? items});
}

/// @nodoc
class _$EstacaoModelCopyWithImpl<$Res, $Val extends EstacaoModel>
    implements $EstacaoModelCopyWith<$Res> {
  _$EstacaoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EstacaoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nome = freezed,
    Object? descricao = freezed,
    Object? items = freezed,
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
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<EstacaoModelItem>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EstacaoModelImplCopyWith<$Res>
    implements $EstacaoModelCopyWith<$Res> {
  factory _$$EstacaoModelImplCopyWith(
          _$EstacaoModelImpl value, $Res Function(_$EstacaoModelImpl) then) =
      __$$EstacaoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int? id,
      @HiveField(1) String? nome,
      @HiveField(2) String? descricao,
      @HiveField(3)
      @JsonKey(name: 'celula_item')
      List<EstacaoModelItem>? items});
}

/// @nodoc
class __$$EstacaoModelImplCopyWithImpl<$Res>
    extends _$EstacaoModelCopyWithImpl<$Res, _$EstacaoModelImpl>
    implements _$$EstacaoModelImplCopyWith<$Res> {
  __$$EstacaoModelImplCopyWithImpl(
      _$EstacaoModelImpl _value, $Res Function(_$EstacaoModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of EstacaoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nome = freezed,
    Object? descricao = freezed,
    Object? items = freezed,
  }) {
    return _then(_$EstacaoModelImpl(
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
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<EstacaoModelItem>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: celulaModelType, adapterName: 'EstacaoModelAdapter')
class _$EstacaoModelImpl implements _EstacaoModel {
  const _$EstacaoModelImpl(
      {@HiveField(0) this.id,
      @HiveField(1) this.nome,
      @HiveField(2) this.descricao,
      @HiveField(3)
      @JsonKey(name: 'celula_item')
      final List<EstacaoModelItem>? items})
      : _items = items;

  factory _$EstacaoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EstacaoModelImplFromJson(json);

  @override
  @HiveField(0)
  final int? id;
  @override
  @HiveField(1)
  final String? nome;
  @override
  @HiveField(2)
  final String? descricao;
  final List<EstacaoModelItem>? _items;
  @override
  @HiveField(3)
  @JsonKey(name: 'celula_item')
  List<EstacaoModelItem>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'EstacaoModel(id: $id, nome: $nome, descricao: $descricao, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EstacaoModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nome, nome) || other.nome == nome) &&
            (identical(other.descricao, descricao) ||
                other.descricao == descricao) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, nome, descricao,
      const DeepCollectionEquality().hash(_items));

  /// Create a copy of EstacaoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EstacaoModelImplCopyWith<_$EstacaoModelImpl> get copyWith =>
      __$$EstacaoModelImplCopyWithImpl<_$EstacaoModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EstacaoModelImplToJson(
      this,
    );
  }
}

abstract class _EstacaoModel implements EstacaoModel {
  const factory _EstacaoModel(
      {@HiveField(0) final int? id,
      @HiveField(1) final String? nome,
      @HiveField(2) final String? descricao,
      @HiveField(3)
      @JsonKey(name: 'celula_item')
      final List<EstacaoModelItem>? items}) = _$EstacaoModelImpl;

  factory _EstacaoModel.fromJson(Map<String, dynamic> json) =
      _$EstacaoModelImpl.fromJson;

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
  @JsonKey(name: 'celula_item')
  List<EstacaoModelItem>? get items;

  /// Create a copy of EstacaoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EstacaoModelImplCopyWith<_$EstacaoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
