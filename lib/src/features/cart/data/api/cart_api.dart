import 'package:dio/dio.dart';
import 'package:homework_test/src/core/network/network_service.dart';
import 'package:homework_test/src/features/cart/data/dto/checkout_request.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cart_api.g.dart';

@Riverpod(keepAlive: true)
CartApi cartApi(CartApiRef ref) {
  final dio = ref.watch(networkServiceProvider);
  return CartApi(dio);
}

@RestApi()
abstract interface class CartApi {
  factory CartApi(Dio dio) => _CartApi(dio);

  @POST('/orders/checkout')
  Future<void> checkout(@Body() CheckoutRequest request);
}
