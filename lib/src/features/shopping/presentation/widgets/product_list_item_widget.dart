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
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 12, bottom: 12),
      child: Row(
        children: [
          Assets.images.productPlaceholder.image(),
          const SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                product.name,
                textAlign: TextAlign.start,
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
                    product.price.toStringAsFixed(2),
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
          const Spacer(),
          SizedBox(
            height: 40,
            child: FilledButton(
              onPressed: () {},
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
        ],
      ),
    );
  }
}
