// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetProductModel _$GetProductModelFromJson(Map<String, dynamic> json) {
  return _GetProductModel.fromJson(json);
}

/// @nodoc
mixin _$GetProductModel {
  List<ProductModel> get items => throw _privateConstructorUsedError;
  String get nextCursor => throw _privateConstructorUsedError;

  /// Serializes this GetProductModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetProductModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetProductModelCopyWith<GetProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetProductModelCopyWith<$Res> {
  factory $GetProductModelCopyWith(
          GetProductModel value, $Res Function(GetProductModel) then) =
      _$GetProductModelCopyWithImpl<$Res, GetProductModel>;
  @useResult
  $Res call({List<ProductModel> items, String nextCursor});
}

/// @nodoc
class _$GetProductModelCopyWithImpl<$Res, $Val extends GetProductModel>
    implements $GetProductModelCopyWith<$Res> {
  _$GetProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetProductModel
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
              as List<ProductModel>,
      nextCursor: null == nextCursor
          ? _value.nextCursor
          : nextCursor // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetProductModelImplCopyWith<$Res>
    implements $GetProductModelCopyWith<$Res> {
  factory _$$GetProductModelImplCopyWith(_$GetProductModelImpl value,
          $Res Function(_$GetProductModelImpl) then) =
      __$$GetProductModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ProductModel> items, String nextCursor});
}

/// @nodoc
class __$$GetProductModelImplCopyWithImpl<$Res>
    extends _$GetProductModelCopyWithImpl<$Res, _$GetProductModelImpl>
    implements _$$GetProductModelImplCopyWith<$Res> {
  __$$GetProductModelImplCopyWithImpl(
      _$GetProductModelImpl _value, $Res Function(_$GetProductModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetProductModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? nextCursor = null,
  }) {
    return _then(_$GetProductModelImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      nextCursor: null == nextCursor
          ? _value.nextCursor
          : nextCursor // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetProductModelImpl implements _GetProductModel {
  const _$GetProductModelImpl(
      {required final List<ProductModel> items, required this.nextCursor})
      : _items = items;

  factory _$GetProductModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetProductModelImplFromJson(json);

  final List<ProductModel> _items;
  @override
  List<ProductModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final String nextCursor;

  @override
  String toString() {
    return 'GetProductModel(items: $items, nextCursor: $nextCursor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProductModelImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.nextCursor, nextCursor) ||
                other.nextCursor == nextCursor));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_items), nextCursor);

  /// Create a copy of GetProductModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProductModelImplCopyWith<_$GetProductModelImpl> get copyWith =>
      __$$GetProductModelImplCopyWithImpl<_$GetProductModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetProductModelImplToJson(
      this,
    );
  }
}

abstract class _GetProductModel implements GetProductModel {
  const factory _GetProductModel(
      {required final List<ProductModel> items,
      required final String nextCursor}) = _$GetProductModelImpl;

  factory _GetProductModel.fromJson(Map<String, dynamic> json) =
      _$GetProductModelImpl.fromJson;

  @override
  List<ProductModel> get items;
  @override
  String get nextCursor;

  /// Create a copy of GetProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetProductModelImplCopyWith<_$GetProductModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
