// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_product_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetProductResponseImpl _$$GetProductResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetProductResponseImpl(
      items: (json['items'] as List<dynamic>)
          .map((e) => ProductResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextCursor: json['nextCursor'] as String,
    );

Map<String, dynamic> _$$GetProductResponseImplToJson(
        _$GetProductResponseImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
      'nextCursor': instance.nextCursor,
    };
