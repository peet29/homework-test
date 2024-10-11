import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class EmptyCartWidget extends ConsumerWidget {
  const EmptyCartWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            context.tr('emptyCart'),
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          FilledButton(
            onPressed: () {
              context.pop();
            },
            child: Text(context.tr('goToShopping'),
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
