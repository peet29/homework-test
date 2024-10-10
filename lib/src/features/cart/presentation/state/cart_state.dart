import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:homework_test/src/features/shopping/domain/product_model.dart';

part 'cart_state.freezed.dart';

@freezed
class CartState with _$CartState {
  const factory CartState({
    @Default([]) List<ProductModel> products,
    @Default(false) bool isLoading,
    @Default(false) bool isSuccess,
    @Default(0) double subtotal,
    @Default(0) double discount,
    @Default(0) double total,
  }) = _CartState;
}
