import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:homework_test/src/core/route/route_provider.dart';

class MainWidget extends ConsumerStatefulWidget {
  const MainWidget({super.key});

  @override
  ConsumerState<MainWidget> createState() => _MainWidgetState();
}

class _MainWidgetState extends ConsumerState<MainWidget> {
  @override
  Widget build(BuildContext context) {
    final router = ref.watch(goRouterProvider);
    return MaterialApp.router(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        title: 'Homework',
        routerConfig: router,
        builder: (context, child) {
          return child ?? const Text('No child provided');
        });
  }
}
