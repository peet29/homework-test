import 'dart:io';

import 'package:dio/dio.dart';
import 'package:homework_test/src/core/error/failure.dart';
import 'package:homework_test/src/features/cart/data/api/cart_api.dart';
import 'package:homework_test/src/features/cart/data/dto/checkout_request.dart';
import 'package:homework_test/src/features/cart/data/repository/icart_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cart_repository.g.dart';

@Riverpod(keepAlive: true)
CartRepository cartRepository(CartRepositoryRef ref) {
  return CartRepository(ref.watch(cartApiProvider));
}

class CartRepository implements ICartRepository {
  final CartApi _cartApi;

  CartRepository(this._cartApi);

  @override
  Future<void> checkout(CheckoutRequest request) async {
    try {
      return await _cartApi.checkout(request);
    } on DioException catch (e) {
      if (e.error is SocketException) {
        throw Failure(message: e.message ?? '');
      }

      if (e.response?.statusCode == 500) {
        throw Failure(
          message: 'Server has some issue, please try again',
          code: e.response?.statusCode,
        );
      }

      throw Failure(
        message: e.response?.statusMessage ?? 'Something went wrong',
        code: e.response?.statusCode,
        exception: e,
      );
    }
  }
}
