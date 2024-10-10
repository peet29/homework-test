import 'package:homework_test/src/core/error/failure.dart';
import 'package:homework_test/src/features/shopping/domain/get_product_model.dart';
import 'package:homework_test/src/features/shopping/domain/product_model.dart';
import 'package:multiple_result/multiple_result.dart';

abstract interface class IShoppingService {
  Future<Result<GetProductModel, Failure>> getProducts(
    String cursor,
    int limit,
  );

  Future<Result<List<ProductModel>, Failure>> getRecommendedProduct();
}
