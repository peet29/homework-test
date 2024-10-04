import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'env_reader.g.dart';

@Riverpod(keepAlive: true)
EnvReader envReader(EnvReaderRef ref) {
  return EnvReader();
}

class EnvReader {
  String baseUrl() {
    return dotenv.env['BASE_URL'] ?? "";
  }
}
