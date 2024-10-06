// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_product_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetProductResponse _$GetProductResponseFromJson(Map<String, dynamic> json) {
  return _GetProductResponse.fromJson(json);
}

/// @nodoc
mixin _$GetProductResponse {
  List<ProductResponse> get items => throw _privateConstructorUsedError;
  String get nextCursor => throw _privateConstructorUsedError;

  /// Serializes this GetProductResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetProductResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetProductResponseCopyWith<GetProductResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetProductResponseCopyWith<$Res> {
  factory $GetProductResponseCopyWith(
          GetProductResponse value, $Res Function(GetProductResponse) then) =
      _$GetProductResponseCopyWithImpl<$Res, GetProductResponse>;
  @useResult
  $Res call({List<ProductResponse> items, String nextCursor});
}

/// @nodoc
class _$GetProductResponseCopyWithImpl<$Res, $Val extends GetProductResponse>
    implements $GetProductResponseCopyWith<$Res> {
  _$GetProductResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetProductResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? nextCursor = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ProductResponse>,
      nextCursor: null == nextCursor
          ? _value.nextCursor
          : nextCursor // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetProductResponseImplCopyWith<$Res>
    implements $GetProductResponseCopyWith<$Res> {
  factory _$$GetProductResponseImplCopyWith(_$GetProductResponseImpl value,
          $Res Function(_$GetProductResponseImpl) then) =
      __$$GetProductResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ProductResponse> items, String nextCursor});
}

/// @nodoc
class __$$GetProductResponseImplCopyWithImpl<$Res>
    extends _$GetProductResponseCopyWithImpl<$Res, _$GetProductResponseImpl>
    implements _$$GetProductResponseImplCopyWith<$Res> {
  __$$GetProductResponseImplCopyWithImpl(_$GetProductResponseImpl _value,
      $Res Function(_$GetProductResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetProductResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? nextCursor = null,
  }) {
    return _then(_$GetProductResponseImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ProductResponse>,
      nextCursor: null == nextCursor
          ? _value.nextCursor
          : nextCursor // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetProductResponseImpl implements _GetProductResponse {
  const _$GetProductResponseImpl(
      {required final List<ProductResponse> items, required this.nextCursor})
      : _items = items;

  factory _$GetProductResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetProductResponseImplFromJson(json);

  final List<ProductResponse> _items;
  @override
  List<ProductResponse> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final String nextCursor;

  @override
  String toString() {
    return 'GetProductResponse(items: $items, nextCursor: $nextCursor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProductResponseImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.nextCursor, nextCursor) ||
                other.nextCursor == nextCursor));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_items), nextCursor);

  /// Create a copy of GetProductResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProductResponseImplCopyWith<_$GetProductResponseImpl> get copyWith =>
      __$$GetProductResponseImplCopyWithImpl<_$GetProductResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetProductResponseImplToJson(
      this,
    );
  }
}

abstract class _GetProductResponse implements GetProductResponse {
  const factory _GetProductResponse(
      {required final List<ProductResponse> items,
      required final String nextCursor}) = _$GetProductResponseImpl;

  factory _GetProductResponse.fromJson(Map<String, dynamic> json) =
      _$GetProductResponseImpl.fromJson;

  @override
  List<ProductResponse> get items;
  @override
  String get nextCursor;

  /// Create a copy of GetProductResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetProductResponseImplCopyWith<_$GetProductResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
