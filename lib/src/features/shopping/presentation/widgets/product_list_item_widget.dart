import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:homework_test/gen/assets.gen.dart';
import 'package:homework_test/src/core/theme/colors.dart';
import 'package:homework_test/src/features/shopping/domain/product_model.dart';

class ProductListItemWidget extends ConsumerWidget {
  final ProductModel product;

  const ProductListItemWidget({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      leading: Assets.images.productPlaceholder.image(),
      title: Text(
        product.name,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: lightOnPrimaryContainer,
        ),
      ),
      subtitle: Row(
        children: [
          Text(
            product.price.toStringAsFixed(2),
            style: const TextStyle(
              fontSize: 24,
              color: lightOnPrimaryContainer,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            " / ${context.tr('unit')}",
            style: const TextStyle(
              fontSize: 16,
              color: schemesSecondary,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
