import 'package:dio/dio.dart';
import 'package:homework_test/src/core/network/network_service.dart';
import 'package:homework_test/src/features/shopping/data/dto/checkout_request.dart';
import 'package:homework_test/src/features/shopping/data/dto/product_response.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'shopping_api.g.dart';

@Riverpod(keepAlive: true)
ShoppingApi shoppingApi(ShoppingApiRef ref) {
  final dio = ref.watch(networkServiceProvider);
  return ShoppingApi(dio);
}

@RestApi()
abstract interface class ShoppingApi {
  factory ShoppingApi(Dio dio) => _ShoppingApi(dio);

  @GET('/recommended-products')
  Future<List<ProductResponse>> getRecommendedProduct();

  @GET('/products')
  Future<List<ProductResponse>> getProducts(
    @Query('cursor') String cursor,
    @Query('limit') int limit,
  );

  @POST('/orders/checkout')
  Future<void> checkout(@Body() CheckoutRequest request);
}
