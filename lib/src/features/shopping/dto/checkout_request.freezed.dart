// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkout_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CheckoutRequest _$CheckoutRequestFromJson(Map<String, dynamic> json) {
  return _CheckoutRequest.fromJson(json);
}

/// @nodoc
mixin _$CheckoutRequest {
  List<int> get products => throw _privateConstructorUsedError;

  /// Serializes this CheckoutRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CheckoutRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CheckoutRequestCopyWith<CheckoutRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutRequestCopyWith<$Res> {
  factory $CheckoutRequestCopyWith(
          CheckoutRequest value, $Res Function(CheckoutRequest) then) =
      _$CheckoutRequestCopyWithImpl<$Res, CheckoutRequest>;
  @useResult
  $Res call({List<int> products});
}

/// @nodoc
class _$CheckoutRequestCopyWithImpl<$Res, $Val extends CheckoutRequest>
    implements $CheckoutRequestCopyWith<$Res> {
  _$CheckoutRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckoutRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckoutRequestImplCopyWith<$Res>
    implements $CheckoutRequestCopyWith<$Res> {
  factory _$$CheckoutRequestImplCopyWith(_$CheckoutRequestImpl value,
          $Res Function(_$CheckoutRequestImpl) then) =
      __$$CheckoutRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<int> products});
}

/// @nodoc
class __$$CheckoutRequestImplCopyWithImpl<$Res>
    extends _$CheckoutRequestCopyWithImpl<$Res, _$CheckoutRequestImpl>
    implements _$$CheckoutRequestImplCopyWith<$Res> {
  __$$CheckoutRequestImplCopyWithImpl(
      _$CheckoutRequestImpl _value, $Res Function(_$CheckoutRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckoutRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_$CheckoutRequestImpl(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckoutRequestImpl implements _CheckoutRequest {
  const _$CheckoutRequestImpl({required final List<int> products})
      : _products = products;

  factory _$CheckoutRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckoutRequestImplFromJson(json);

  final List<int> _products;
  @override
  List<int> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'CheckoutRequest(products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckoutRequestImpl &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  /// Create a copy of CheckoutRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckoutRequestImplCopyWith<_$CheckoutRequestImpl> get copyWith =>
      __$$CheckoutRequestImplCopyWithImpl<_$CheckoutRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckoutRequestImplToJson(
      this,
    );
  }
}

abstract class _CheckoutRequest implements CheckoutRequest {
  const factory _CheckoutRequest({required final List<int> products}) =
      _$CheckoutRequestImpl;

  factory _CheckoutRequest.fromJson(Map<String, dynamic> json) =
      _$CheckoutRequestImpl.fromJson;

  @override
  List<int> get products;

  /// Create a copy of CheckoutRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckoutRequestImplCopyWith<_$CheckoutRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
