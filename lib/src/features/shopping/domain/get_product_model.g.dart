// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetProductModelImpl _$$GetProductModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GetProductModelImpl(
      items: (json['items'] as List<dynamic>)
          .map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextCursor: json['nextCursor'] as String,
    );

Map<String, dynamic> _$$GetProductModelImplToJson(
        _$GetProductModelImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
      'nextCursor': instance.nextCursor,
    };
