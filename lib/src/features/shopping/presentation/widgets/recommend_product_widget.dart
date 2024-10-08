import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:homework_test/src/features/shopping/presentation/controller/shopping_controller.dart';
import 'package:homework_test/src/features/shopping/presentation/widgets/product_list_item_widget.dart';

class RecommendProductWidget extends ConsumerStatefulWidget {
  const RecommendProductWidget({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _RecommendProductWidgetState();
}

class _RecommendProductWidgetState
    extends ConsumerState<RecommendProductWidget> {
  @override
  Widget build(BuildContext context) {
    final product =
        ref.watch(shoppingControllerProvider).recommendedProduct.valueOrNull ??
            [];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Text(
            context.tr('recommendProduct'),
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        ...product.map((item) {
          return ProductListItemWidget(
            product: item,
          );
        }),
        const SizedBox(
          height: 18,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Text(
            context.tr(
              'latestProducts',
            ),
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
      ],
    );
  }
}
