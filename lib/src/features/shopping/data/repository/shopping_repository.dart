import 'dart:io';

import 'package:dio/dio.dart';
import 'package:homework_test/src/core/error/failure.dart';
import 'package:homework_test/src/features/shopping/data/api/shopping_api.dart';
import 'package:homework_test/src/features/shopping/data/dto/checkout_request.dart';
import 'package:homework_test/src/features/shopping/data/dto/get_product_response.dart';
import 'package:homework_test/src/features/shopping/data/dto/product_response.dart';
import 'package:homework_test/src/features/shopping/data/repository/ishopping_repository.dart';

class ShoppingRepository implements IShoppingRepository {
  final ShoppingApi _shoppingApi;

  ShoppingRepository(this._shoppingApi);

  @override
  Future<void> checkout(CheckoutRequest request) async {
    try {
      return await _shoppingApi.checkout(request);
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

  @override
  Future<GetProductResponse> getProducts(String cursor, int limit) async {
    try {
      return await _shoppingApi.getProducts(cursor, limit);
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

  @override
  Future<List<ProductResponse>> getRecommendedProduct() async {
    try {
      return await _shoppingApi.getRecommendedProduct();
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
