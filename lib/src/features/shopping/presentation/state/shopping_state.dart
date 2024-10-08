import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:homework_test/src/features/shopping/domain/product_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'shopping_state.freezed.dart';

@freezed
class ShoppingState with _$ShoppingState {
  const factory ShoppingState({
    @Default(AsyncLoading()) final AsyncValue<List<ProductModel>> latestProduct,
    @Default(AsyncLoading())
    final AsyncValue<List<ProductModel>> recommendedProduct,
    @Default('') String cursor,
    @Default(false) bool isLoadingMore,
  }) = _ShoppingState;
}
