import 'package:homework_test/src/features/cart/data/dto/checkout_request.dart';

abstract interface class ICartRepository {
  Future<void> checkout(CheckoutRequest request);
}
