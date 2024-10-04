import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:homework_test/src/core/theme/colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:material_symbols_icons/symbols.dart';

class BottomNavigationWidget extends ConsumerStatefulWidget {
  final StatefulNavigationShell navigationShell;

  const BottomNavigationWidget({super.key, required this.navigationShell});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState
    extends ConsumerState<BottomNavigationWidget> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: schemesSurfaceContainer,
      selectedItemColor: Colors.black,
      unselectedItemColor: schemesOnSurfaceVariant,
      currentIndex: widget.navigationShell.currentIndex,
      items: [
        BottomNavigationBarItem(
          activeIcon: Container(
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
              decoration: const BoxDecoration(
                  color: schemesSecondaryContainer,
                  borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(16), right: Radius.circular(16))),
              child: const Icon(Icons.stars_rounded)),
          icon: const Icon(
            Icons.stars_rounded,
            size: 20,
          ),
          label: context.tr('shoppingLabel'),
        ),
        BottomNavigationBarItem(
          icon: const Icon(
            Symbols.stars_rounded,
            size: 20,
          ),
          label: context.tr('cartLabel'),
        ),
      ],
    );
  }
}