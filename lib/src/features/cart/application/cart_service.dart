import 'package:homework_test/src/core/error/failure.dart';
import 'package:homework_test/src/features/cart/application/icart_service.dart';
import 'package:homework_test/src/features/cart/data/dto/checkout_request.dart';
import 'package:homework_test/src/features/cart/data/repository/cart_repository.dart';
import 'package:multiple_result/multiple_result.dart';

class CartService implements ICartService {
  final CartRepository _cartRepository;

  CartService(this._cartRepository);

  @override
  Future<Result<void, Failure>> checkbox(CheckoutRequest request) async {
    try {
      final response = await _cartRepository.checkout(request);
      return Success(response);
    } on Failure catch (e) {
      return Error(e);
    }
  }
}
