import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:homework_test/src/features/shopping/presentation/controller/shopping_controller.dart';
import 'package:homework_test/src/features/shopping/presentation/widgets/product_list_item_loading_widget.dart';
import 'package:homework_test/src/features/shopping/presentation/widgets/product_list_item_widget.dart';
import 'package:homework_test/src/features/shopping/presentation/widgets/recommend_product_widget.dart';

class ShoppingScreen extends ConsumerStatefulWidget {
  const ShoppingScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ShoppingScreenState();
}

class _ShoppingScreenState extends ConsumerState<ShoppingScreen> {
  final scrollController = ScrollController();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(shoppingControllerProvider.notifier).getProducts('', 10);
      ref.read(shoppingControllerProvider.notifier).getRecommendedProduct();
    });

    scrollController.addListener(checkEndOfList);
    super.initState();
  }

  @override
  void dispose() {
    scrollController.removeListener(checkEndOfList);
    scrollController.dispose();
    super.dispose();
  }

  void checkEndOfList() {
    final isEndList = scrollController.position.pixels >=
        scrollController.position.maxScrollExtent - 50;

    if (isEndList) {
      ref.read(shoppingControllerProvider.notifier).getMoreProducts();
    }
  }

  @override
  Widget build(BuildContext context) {
    final latestProduct = ref.watch(
        shoppingControllerProvider.select((state) => state.latestProduct));

    return SafeArea(
      child: Scaffold(
        body: Scrollbar(
            controller: scrollController,
            child: latestProduct.when(data: (product) {
              return ListView.builder(
                controller: scrollController,
                itemCount: product.length,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return Column(
                      children: [
                        const RecommendProductWidget(),
                        ProductListItemWidget(product: product[index]),
                      ],
                    );
                  }

                  if (index == product.length - 1) {
                    final isLoadingMore = ref.watch(shoppingControllerProvider
                        .select((state) => state.isLoadingMore));
                    return Column(
                      children: [
                        ProductListItemWidget(product: product[index]),
                        if (isLoadingMore)
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const CircularProgressIndicator(),
                              const SizedBox(width: 10),
                              Text(
                                context.tr('loading'),
                                style: const TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 20),
                              )
                            ],
                          )
                      ],
                    );
                  }

                  return ProductListItemWidget(product: product[index]);
                },
              );
            }, error: (error, st) {
              return Text(error.toString());
            }, loading: () {
              return SingleChildScrollView(
                child: Column(
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
                    ...List.generate(4, (index) {
                      return const ProductListItemLoadingWidget();
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
                    ...List.generate(6, (index) {
                      return const ProductListItemLoadingWidget();
                    }),
                  ],
                ),
              );
            })),
      ),
    );
  }
}
