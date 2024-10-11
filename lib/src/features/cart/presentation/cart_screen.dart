import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:homework_test/src/core/theme/colors.dart';
import 'package:homework_test/src/features/cart/presentation/controller/cart_controller.dart';
import 'package:homework_test/src/features/cart/presentation/widgets/empty_cart.dart';
import 'package:homework_test/src/features/shopping/presentation/widgets/product_list_item_widget.dart';
import 'package:material_symbols_icons/symbols.dart';

class CartScreen extends ConsumerStatefulWidget {
  const CartScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CartScreenState();
}

class _CartScreenState extends ConsumerState<CartScreen> {
  @override
  Widget build(BuildContext context) {
    final products =
        ref.watch(cartControllerProvider.select((state) => state.products));

    final subtotal =
        ref.watch(cartControllerProvider.select((state) => state.subtotal));

    final discount =
        ref.watch(cartControllerProvider.select((state) => state.discount));

    final total =
        ref.watch(cartControllerProvider.select((state) => state.total));

    final isSuccess =
        ref.watch(cartControllerProvider.select((state) => state.isSuccess));

    return SafeArea(
        bottom: false,
        top: false,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: false,
            title: Text(context.tr('cartLabel')),
          ),
          body: Column(
            children: [
              if (products.isEmpty) ...[
                const Expanded(child: EmptyCartWidget()),
              ] else if (isSuccess)
                ...[]
              else ...[
                Expanded(
                  child: ListView.builder(
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      final product = products[index];
                      return Dismissible(
                          direction: DismissDirection.endToStart,
                          background: Container(
                            color: discountTextColor,
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(Symbols.delete, color: Colors.white),
                                SizedBox(
                                  width: 106,
                                )
                              ],
                            ),
                          ),
                          onDismissed: (direction) {
                            ref
                                .read(cartControllerProvider.notifier)
                                .removeProduct(
                                  product,
                                );
                          },
                          key: Key(product.id.toString()),
                          child: ProductListItemWidget(
                            product: product,
                          ));
                    },
                  ),
                ),
                Container(
                  height: 163,
                  width: double.infinity,
                  color: schemesSecondaryContainer,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(children: [
                      Row(
                        children: [
                          Text(
                            context.tr('subtotal'),
                            style: const TextStyle(
                              color: textColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Spacer(),
                          Text(
                            NumberFormat.currency(symbol: '').format(subtotal),
                            style: const TextStyle(
                              color: textColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            context.tr('promotion'),
                            style: const TextStyle(
                              color: textColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Spacer(),
                          Text(
                            '-${NumberFormat.currency(symbol: '').format(discount)}',
                            style: const TextStyle(
                              color: discountTextColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            NumberFormat.currency(symbol: '').format(total),
                            style: const TextStyle(
                              color: textColor,
                              fontSize: 32,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            width: 177,
                            child: FilledButton(
                              onPressed: () {},
                              child: Text(
                                context.tr('checkout'),
                                style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      )
                    ]),
                  ),
                )
              ]
            ],
          ),
        ));
  }
}
