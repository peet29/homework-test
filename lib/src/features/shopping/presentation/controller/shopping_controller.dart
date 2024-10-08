import 'package:homework_test/src/features/shopping/application/shopping_service.dart';
import 'package:homework_test/src/features/shopping/presentation/state/shopping_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'shopping_controller.g.dart';

@Riverpod(keepAlive: true)
class ShoppingController extends _$ShoppingController {
  @override
  ShoppingState build() {
    return const ShoppingState();
  }

  Future<void> getRecommendedProduct() async {
    state = state.copyWith(
      recommendedProduct: const AsyncValue.loading(),
    );

    final result =
        await ref.watch(shoppingServiceProvider).getRecommendedProduct();

    result.when(
      (value) => state = state.copyWith(
        recommendedProduct: AsyncValue.data(value),
      ),
      (failure) => state = state.copyWith(
        recommendedProduct: AsyncValue.error(failure, StackTrace.current),
      ),
    );
  }

  Future<void> getProducts(String cursor, int limit) async {
    final result =
        await ref.watch(shoppingServiceProvider).getProducts(cursor, limit);

    final productList = state.latestProduct.valueOrNull;

    result.when(
      (value) {
        state = state.copyWith(
          latestProduct: AsyncValue.data([...?productList, ...value.items]),
          cursor: value.nextCursor,
        );
      },
      (failure) => state = state.copyWith(
        latestProduct: AsyncValue.error(failure, StackTrace.current),
      ),
    );
  }
}
