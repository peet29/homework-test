import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:homework_test/src/features/shopping/presentation/widgets/product_list_item_loading_widget.dart';
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
    final recommendedProduct =
        ref.watch(shoppingControllerProvider).recommendedProduct;
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
        recommendedProduct.when(data: (data) {
          return Column(
            children: data
                .map(
                  (item) => ProductListItemWidget(
                    product: item,
                  ),
                )
                .toList(),
          );
        }, error: (error, st) {
          return Text(error.toString());
        }, loading: () {
          return Column(children: [
            ...List.generate(4, (index) {
              return const ProductListItemLoadingWidget();
            }),
          ]);
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
