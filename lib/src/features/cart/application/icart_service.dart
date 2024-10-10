import 'package:homework_test/src/core/error/failure.dart';
import 'package:homework_test/src/features/cart/data/dto/checkout_request.dart';
import 'package:multiple_result/multiple_result.dart';

abstract interface class ICartService {
  Future<Result<void, Failure>> checkbox(CheckoutRequest request);
}
