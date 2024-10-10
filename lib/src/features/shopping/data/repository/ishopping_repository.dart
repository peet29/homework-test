import 'package:homework_test/src/features/shopping/data/dto/get_product_response.dart';
import 'package:homework_test/src/features/shopping/data/dto/product_response.dart';

abstract interface class IShoppingRepository {
  Future<List<ProductResponse>> getRecommendedProduct();
  Future<GetProductResponse> getProducts(String cursor, int limit);
}
