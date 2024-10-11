import 'package:homework_test/src/features/cart/application/cart_service.dart';
import 'package:homework_test/src/features/cart/data/dto/checkout_request.dart';
import 'package:homework_test/src/features/cart/presentation/state/cart_state.dart';
import 'package:homework_test/src/features/shopping/domain/product_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cart_controller.g.dart';

@Riverpod(keepAlive: true)
class CartController extends _$CartController {
  @override
  CartState build() {
    return const CartState();
  }

  void addProduct(ProductModel product) {
    state = state.copyWith(products: [...state.products, product]);
    addQuantity(product);
  }

  void removeProduct(ProductModel product) {
    state = state.copyWith(
      products:
          state.products.where((element) => element.id != product.id).toList(),
    );

    upDateTotal();
  }

  void clearStatus() {
    state = state.copyWith(isSuccess: false, isLoading: false);
  }

  void clearCart() {
    state = state.copyWith(products: [], isLoading: false, isSuccess: false);
  }

  void upDateTotal() {
    state = state.copyWith(
      subtotal: subtotal(),
      discount: discount(),
      total: subtotal() - discount(),
    );
  }

  void addQuantity(ProductModel product) {
    state = state.copyWith(
      products: state.products
          .map((e) => e.id == product.id && e.name == product.name
              ? e.copyWith(quantity: e.quantity + 1)
              : e)
          .toList(),
    );

    upDateTotal();
  }

  void removeQuantity(ProductModel product) {
    state = state.copyWith(
      products: state.products
          .map((e) => e.id == product.id && e.name == product.name
              ? e.copyWith(quantity: e.quantity - 1)
              : e)
          .where((e) => e.quantity > 0)
          .toList(),
    );

    upDateTotal();
  }

  Future<bool> checkout() async {
    state = state.copyWith(isLoading: true);
    final request =
        CheckoutRequest(products: state.products.map((e) => e.id).toList());
    final res = await ref.read(cartServiceProvider).checkbox(request);

    res.when((success) {
      state = state.copyWith(isLoading: false, isSuccess: true, products: []);
    }, (error) {
      state = state.copyWith(isLoading: false);
    });

    return res.isSuccess();
  }

  double subtotal() {
    return state.products
        .fold(0, (prev, next) => prev + next.price * next.quantity);
  }

  double discount() {
    const discountRate = 0.05;
    final discountList = state.products.where((item) => item.quantity >= 2);

    if (discountList.isEmpty) {
      return 0;
    }

    final discount = discountList.fold(0.0, (prev, next) {
      // Calculate pairs (only pairs qualify for discount)
      int pairs = next.quantity ~/ 2; // Integer division to get pairs
      // Price for pairs without discount
      double totalForPairs = pairs * next.price * 2;

      // Discount for the pairs
      double discountForPairs = totalForPairs * discountRate;

      return prev + discountForPairs;
    });
    return discount;
  }
}
