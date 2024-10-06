import 'package:homework_test/src/core/env/env_reader.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:dio/dio.dart';

part 'network_service.g.dart';

@Riverpod(keepAlive: true)
Dio networkService(NetworkServiceRef ref) {
  final envReader = ref.watch(envReaderProvider);
  final option = BaseOptions(
    baseUrl: envReader.baseUrl(),
    contentType: Headers.jsonContentType,
    headers: {
      Headers.acceptHeader: Headers.jsonContentType,
    },
  );

  return Dio(option);
}
