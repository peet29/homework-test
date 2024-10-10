// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CheckoutRequestImpl _$$CheckoutRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CheckoutRequestImpl(
      products: (json['products'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$$CheckoutRequestImplToJson(
        _$CheckoutRequestImpl instance) =>
    <String, dynamic>{
      'products': instance.products,
    };
