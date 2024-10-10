import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:homework_test/src/features/shopping/domain/product_model.dart';

part 'cart_model.freezed.dart';
part 'cart_model.g.dart';

@freezed
class CartModel {
  const factory CartModel({
    required List<ProductModel> items,
  }) = _CartModel;

  factory CartModel.fromJson(Map<String, dynamic> json) =>
      _$CartModelFromJson(json);
}
