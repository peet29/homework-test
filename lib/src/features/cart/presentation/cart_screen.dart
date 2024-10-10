import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:homework_test/src/core/theme/colors.dart';
import 'package:homework_test/src/features/cart/presentation/controller/cart_controller.dart';
import 'package:homework_test/src/features/shopping/presentation/widgets/product_list_item_widget.dart';

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
              Expanded(
                child: ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    final product = products[index];
                    return Dismissible(
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
              )
            ],
          ),
        ));
  }
}
