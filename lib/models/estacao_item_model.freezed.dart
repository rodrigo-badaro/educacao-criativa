// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'estacao_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EstacaoModelItem _$EstacaoModelItemFromJson(Map<String, dynamic> json) {
  return _EstacaoModelItem.fromJson(json);
}

/// @nodoc
mixin _$EstacaoModelItem {
  @HiveField(1)
  ItemModel? get item => throw _privateConstructorUsedError;
  @HiveField(2)
  int? get quantidade => throw _privateConstructorUsedError;
  @HiveField(3)
  @JsonKey(name: 'quantidade_aviso')
  int? get quantidadeAviso => throw _privateConstructorUsedError;
  @HiveField(4)
  @JsonKey(name: 'quantidade_minima')
  int? get quantidadeMinima => throw _privateConstructorUsedError;

  /// Serializes this EstacaoModelItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EstacaoModelItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EstacaoModelItemCopyWith<EstacaoModelItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EstacaoModelItemCopyWith<$Res> {
  factory $EstacaoModelItemCopyWith(
          EstacaoModelItem value, $Res Function(EstacaoModelItem) then) =
      _$EstacaoModelItemCopyWithImpl<$Res, EstacaoModelItem>;
  @useResult
  $Res call(
      {@HiveField(1) ItemModel? item,
      @HiveField(2) int? quantidade,
      @HiveField(3) @JsonKey(name: 'quantidade_aviso') int? quantidadeAviso,
      @HiveField(4) @JsonKey(name: 'quantidade_minima') int? quantidadeMinima});

  $ItemModelCopyWith<$Res>? get item;
}

/// @nodoc
class _$EstacaoModelItemCopyWithImpl<$Res, $Val extends EstacaoModelItem>
    implements $EstacaoModelItemCopyWith<$Res> {
  _$EstacaoModelItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EstacaoModelItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = freezed,
    Object? quantidade = freezed,
    Object? quantidadeAviso = freezed,
    Object? quantidadeMinima = freezed,
  }) {
    return _then(_value.copyWith(
      item: freezed == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as ItemModel?,
      quantidade: freezed == quantidade
          ? _value.quantidade
          : quantidade // ignore: cast_nullable_to_non_nullable
              as int?,
      quantidadeAviso: freezed == quantidadeAviso
          ? _value.quantidadeAviso
          : quantidadeAviso // ignore: cast_nullable_to_non_nullable
              as int?,
      quantidadeMinima: freezed == quantidadeMinima
          ? _value.quantidadeMinima
          : quantidadeMinima // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of EstacaoModelItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ItemModelCopyWith<$Res>? get item {
    if (_value.item == null) {
      return null;
    }

    return $ItemModelCopyWith<$Res>(_value.item!, (value) {
      return _then(_value.copyWith(item: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EstacaoModelItemImplCopyWith<$Res>
    implements $EstacaoModelItemCopyWith<$Res> {
  factory _$$EstacaoModelItemImplCopyWith(_$EstacaoModelItemImpl value,
          $Res Function(_$EstacaoModelItemImpl) then) =
      __$$EstacaoModelItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(1) ItemModel? item,
      @HiveField(2) int? quantidade,
      @HiveField(3) @JsonKey(name: 'quantidade_aviso') int? quantidadeAviso,
      @HiveField(4) @JsonKey(name: 'quantidade_minima') int? quantidadeMinima});

  @override
  $ItemModelCopyWith<$Res>? get item;
}

/// @nodoc
class __$$EstacaoModelItemImplCopyWithImpl<$Res>
    extends _$EstacaoModelItemCopyWithImpl<$Res, _$EstacaoModelItemImpl>
    implements _$$EstacaoModelItemImplCopyWith<$Res> {
  __$$EstacaoModelItemImplCopyWithImpl(_$EstacaoModelItemImpl _value,
      $Res Function(_$EstacaoModelItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of EstacaoModelItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = freezed,
    Object? quantidade = freezed,
    Object? quantidadeAviso = freezed,
    Object? quantidadeMinima = freezed,
  }) {
    return _then(_$EstacaoModelItemImpl(
      item: freezed == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as ItemModel?,
      quantidade: freezed == quantidade
          ? _value.quantidade
          : quantidade // ignore: cast_nullable_to_non_nullable
              as int?,
      quantidadeAviso: freezed == quantidadeAviso
          ? _value.quantidadeAviso
          : quantidadeAviso // ignore: cast_nullable_to_non_nullable
              as int?,
      quantidadeMinima: freezed == quantidadeMinima
          ? _value.quantidadeMinima
          : quantidadeMinima // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: celulaItemModelType, adapterName: 'EstacaoItemModelAdapter')
class _$EstacaoModelItemImpl implements _EstacaoModelItem {
  const _$EstacaoModelItemImpl(
      {@HiveField(1) this.item,
      @HiveField(2) this.quantidade,
      @HiveField(3) @JsonKey(name: 'quantidade_aviso') this.quantidadeAviso,
      @HiveField(4) @JsonKey(name: 'quantidade_minima') this.quantidadeMinima});

  factory _$EstacaoModelItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$EstacaoModelItemImplFromJson(json);

  @override
  @HiveField(1)
  final ItemModel? item;
  @override
  @HiveField(2)
  final int? quantidade;
  @override
  @HiveField(3)
  @JsonKey(name: 'quantidade_aviso')
  final int? quantidadeAviso;
  @override
  @HiveField(4)
  @JsonKey(name: 'quantidade_minima')
  final int? quantidadeMinima;

  @override
  String toString() {
    return 'EstacaoModelItem(item: $item, quantidade: $quantidade, quantidadeAviso: $quantidadeAviso, quantidadeMinima: $quantidadeMinima)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EstacaoModelItemImpl &&
            (identical(other.item, item) || other.item == item) &&
            (identical(other.quantidade, quantidade) ||
                other.quantidade == quantidade) &&
            (identical(other.quantidadeAviso, quantidadeAviso) ||
                other.quantidadeAviso == quantidadeAviso) &&
            (identical(other.quantidadeMinima, quantidadeMinima) ||
                other.quantidadeMinima == quantidadeMinima));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, item, quantidade, quantidadeAviso, quantidadeMinima);

  /// Create a copy of EstacaoModelItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EstacaoModelItemImplCopyWith<_$EstacaoModelItemImpl> get copyWith =>
      __$$EstacaoModelItemImplCopyWithImpl<_$EstacaoModelItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EstacaoModelItemImplToJson(
      this,
    );
  }
}

abstract class _EstacaoModelItem implements EstacaoModelItem {
  const factory _EstacaoModelItem(
      {@HiveField(1) final ItemModel? item,
      @HiveField(2) final int? quantidade,
      @HiveField(3)
      @JsonKey(name: 'quantidade_aviso')
      final int? quantidadeAviso,
      @HiveField(4)
      @JsonKey(name: 'quantidade_minima')
      final int? quantidadeMinima}) = _$EstacaoModelItemImpl;

  factory _EstacaoModelItem.fromJson(Map<String, dynamic> json) =
      _$EstacaoModelItemImpl.fromJson;

  @override
  @HiveField(1)
  ItemModel? get item;
  @override
  @HiveField(2)
  int? get quantidade;
  @override
  @HiveField(3)
  @JsonKey(name: 'quantidade_aviso')
  int? get quantidadeAviso;
  @override
  @HiveField(4)
  @JsonKey(name: 'quantidade_minima')
  int? get quantidadeMinima;

  /// Create a copy of EstacaoModelItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EstacaoModelItemImplCopyWith<_$EstacaoModelItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
