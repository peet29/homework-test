import 'package:homework_test/src/core/error/failure.dart';
import 'package:homework_test/src/features/shopping/application/ishopping_service.dart';
import 'package:homework_test/src/features/shopping/data/dto/checkout_request.dart';
import 'package:homework_test/src/features/shopping/data/repository/shopping_repository.dart';
import 'package:homework_test/src/features/shopping/domain/get_product_model.dart';
import 'package:homework_test/src/features/shopping/domain/product_model.dart';
import 'package:multiple_result/src/result.dart';

class ShoppingService implements IShoppingService {
  final ShoppingRepository _shoppingRepository;
  ShoppingService(this._shoppingRepository);

  @override
  Future<Result<void, Failure>> checkout() async {
    try {
      const request = CheckoutRequest(products: [0]);
      final response = await _shoppingRepository.checkout(request);

      return Success(response);
    } on Failure catch (e) {
      return Error(e);
    }
  }

  @override
  Future<Result<GetProductModel, Failure>> getProducts(
      String cursor, int limit) async {
    try {
      final response = await _shoppingRepository.getProducts(cursor, limit);
      final model = GetProductModel(
        nextCursor: response.nextCursor,
        items: response.items
            .map((item) => ProductModel(
                  id: item.id,
                  name: item.name,
                  price: item.price,
                  quantity: 0,
                ))
            .toList(),
      );
      return Success(model);
    } on Failure catch (e) {
      return Error(e);
    }
  }

  @override
  Future<Result<List<ProductModel>, Failure>> getRecommendedProduct() async {
    try {
      final response = await _shoppingRepository.getRecommendedProduct();
      final list = response
          .map((item) => ProductModel(
                id: item.id,
                name: item.name,
                price: item.price,
                quantity: 0,
              ))
          .toList();
      return Success(list);
    } on Failure catch (e) {
      return Error(e);
    }
  }
}
