import 'package:collection/collection.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:homework_test/gen/assets.gen.dart';
import 'package:homework_test/src/core/theme/colors.dart';
import 'package:homework_test/src/features/cart/presentation/controller/cart_controller.dart';
import 'package:homework_test/src/features/shopping/domain/product_model.dart';

class ProductListItemWidget extends ConsumerWidget {
  final ProductModel product;

  const ProductListItemWidget({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productCartList =
        ref.watch(cartControllerProvider.select((state) => state.products));

    final productInCart = productCartList.firstWhereOrNull(
      (element) => element.id == product.id && element.name == product.name,
    );

    final isProductInCart = productInCart != null;

    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 12, bottom: 12),
      child: Row(
        children: [
          Assets.images.productPlaceholder.image(),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.ellipsis,
                  softWrap: false,
                  maxLines: 1,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: lightOnPrimaryContainer,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      NumberFormat.currency(symbol: '').format(product.price),
                      style: const TextStyle(
                        fontSize: 22,
                        color: lightOnPrimaryContainer,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      " / ${context.tr('unit')}",
                      style: const TextStyle(
                        fontSize: 14,
                        color: schemesSecondary,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          if (isProductInCart) ...[
            Row(
              children: [
                IconButton(
                  style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(primaryColor)),
                  onPressed: () {
                    ref
                        .read(cartControllerProvider.notifier)
                        .removeQuantity(product);
                  },
                  icon: const Icon(
                    Icons.remove,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 35,
                  child: Text(
                    textAlign: TextAlign.center,
                    productInCart.quantity.toString(),
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                IconButton(
                  style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(primaryColor)),
                  onPressed: () {
                    ref
                        .read(cartControllerProvider.notifier)
                        .addQuantity(product);
                  },
                  icon: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                )
              ],
            )
          ] else ...[
            SizedBox(
              height: 40,
              child: FilledButton(
                style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(primaryColor)),
                onPressed: () {
                  ref.read(cartControllerProvider.notifier).addProduct(product);
                },
                child: Text(
                  context.tr('addToCart'),
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.1,
                  ),
                ),
              ),
            ),
          ]
        ],
      ),
    );
  }
}
