import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:homework_test/src/core/theme/colors.dart';
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
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: SizedBox(
            width: double.infinity,
            child: Text(
              textAlign: TextAlign.start,
              context.tr('recommendProduct'),
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w400,
              ),
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
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.cancel_outlined,
                color: discountTextColor,
                size: 57.17,
              ),
              Text(
                context.tr('errorMessage'),
                style:
                    const TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 10,
              ),
              FilledButton(
                  onPressed: () {
                    ref
                        .read(shoppingControllerProvider.notifier)
                        .getRecommendedProduct();
                  },
                  child: Text(context.tr("refresh")))
            ],
          );
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
          child: SizedBox(
            width: double.infinity,
            child: Text(
              context.tr(
                'latestProducts',
              ),
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.start,
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
