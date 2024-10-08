// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shopping_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ShoppingState {
  AsyncValue<List<ProductModel>> get latestProduct =>
      throw _privateConstructorUsedError;
  AsyncValue<List<ProductModel>> get recommendedProduct =>
      throw _privateConstructorUsedError;
  String get cursor => throw _privateConstructorUsedError;
  bool get isLoadingMore => throw _privateConstructorUsedError;

  /// Create a copy of ShoppingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShoppingStateCopyWith<ShoppingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShoppingStateCopyWith<$Res> {
  factory $ShoppingStateCopyWith(
          ShoppingState value, $Res Function(ShoppingState) then) =
      _$ShoppingStateCopyWithImpl<$Res, ShoppingState>;
  @useResult
  $Res call(
      {AsyncValue<List<ProductModel>> latestProduct,
      AsyncValue<List<ProductModel>> recommendedProduct,
      String cursor,
      bool isLoadingMore});
}

/// @nodoc
class _$ShoppingStateCopyWithImpl<$Res, $Val extends ShoppingState>
    implements $ShoppingStateCopyWith<$Res> {
  _$ShoppingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShoppingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latestProduct = null,
    Object? recommendedProduct = null,
    Object? cursor = null,
    Object? isLoadingMore = null,
  }) {
    return _then(_value.copyWith(
      latestProduct: null == latestProduct
          ? _value.latestProduct
          : latestProduct // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<ProductModel>>,
      recommendedProduct: null == recommendedProduct
          ? _value.recommendedProduct
          : recommendedProduct // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<ProductModel>>,
      cursor: null == cursor
          ? _value.cursor
          : cursor // ignore: cast_nullable_to_non_nullable
              as String,
      isLoadingMore: null == isLoadingMore
          ? _value.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShoppingStateImplCopyWith<$Res>
    implements $ShoppingStateCopyWith<$Res> {
  factory _$$ShoppingStateImplCopyWith(
          _$ShoppingStateImpl value, $Res Function(_$ShoppingStateImpl) then) =
      __$$ShoppingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AsyncValue<List<ProductModel>> latestProduct,
      AsyncValue<List<ProductModel>> recommendedProduct,
      String cursor,
      bool isLoadingMore});
}

/// @nodoc
class __$$ShoppingStateImplCopyWithImpl<$Res>
    extends _$ShoppingStateCopyWithImpl<$Res, _$ShoppingStateImpl>
    implements _$$ShoppingStateImplCopyWith<$Res> {
  __$$ShoppingStateImplCopyWithImpl(
      _$ShoppingStateImpl _value, $Res Function(_$ShoppingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShoppingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latestProduct = null,
    Object? recommendedProduct = null,
    Object? cursor = null,
    Object? isLoadingMore = null,
  }) {
    return _then(_$ShoppingStateImpl(
      latestProduct: null == latestProduct
          ? _value.latestProduct
          : latestProduct // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<ProductModel>>,
      recommendedProduct: null == recommendedProduct
          ? _value.recommendedProduct
          : recommendedProduct // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<ProductModel>>,
      cursor: null == cursor
          ? _value.cursor
          : cursor // ignore: cast_nullable_to_non_nullable
              as String,
      isLoadingMore: null == isLoadingMore
          ? _value.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ShoppingStateImpl implements _ShoppingState {
  const _$ShoppingStateImpl(
      {this.latestProduct = const AsyncLoading(),
      this.recommendedProduct = const AsyncLoading(),
      this.cursor = '',
      this.isLoadingMore = false});

  @override
  @JsonKey()
  final AsyncValue<List<ProductModel>> latestProduct;
  @override
  @JsonKey()
  final AsyncValue<List<ProductModel>> recommendedProduct;
  @override
  @JsonKey()
  final String cursor;
  @override
  @JsonKey()
  final bool isLoadingMore;

  @override
  String toString() {
    return 'ShoppingState(latestProduct: $latestProduct, recommendedProduct: $recommendedProduct, cursor: $cursor, isLoadingMore: $isLoadingMore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShoppingStateImpl &&
            (identical(other.latestProduct, latestProduct) ||
                other.latestProduct == latestProduct) &&
            (identical(other.recommendedProduct, recommendedProduct) ||
                other.recommendedProduct == recommendedProduct) &&
            (identical(other.cursor, cursor) || other.cursor == cursor) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, latestProduct, recommendedProduct, cursor, isLoadingMore);

  /// Create a copy of ShoppingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShoppingStateImplCopyWith<_$ShoppingStateImpl> get copyWith =>
      __$$ShoppingStateImplCopyWithImpl<_$ShoppingStateImpl>(this, _$identity);
}

abstract class _ShoppingState implements ShoppingState {
  const factory _ShoppingState(
      {final AsyncValue<List<ProductModel>> latestProduct,
      final AsyncValue<List<ProductModel>> recommendedProduct,
      final String cursor,
      final bool isLoadingMore}) = _$ShoppingStateImpl;

  @override
  AsyncValue<List<ProductModel>> get latestProduct;
  @override
  AsyncValue<List<ProductModel>> get recommendedProduct;
  @override
  String get cursor;
  @override
  bool get isLoadingMore;

  /// Create a copy of ShoppingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShoppingStateImplCopyWith<_$ShoppingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
