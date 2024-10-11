import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:homework_test/src/features/cart/presentation/controller/cart_controller.dart';

class SuccessScreenWidget extends ConsumerWidget {
  const SuccessScreenWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            context.tr('success'),
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            context.tr('thankyouMessage'),
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          FilledButton(
            onPressed: () {
              ref.read(cartControllerProvider.notifier).clearCart();
              context.pop();
            },
            child: Text(context.tr('shopAgain'),
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                )),
          ),
        ],
      ),
    );
  }
}
