import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:homework_test/src/features/shopping/data/dto/product_response.dart';

part 'get_product_response.freezed.dart';
part 'get_product_response.g.dart';

@freezed
class GetProductResponse with _$GetProductResponse {
  const factory GetProductResponse({
    required List<ProductResponse> items,
    required String nextCursor,
  }) = _GetProductResponse;

  factory GetProductResponse.fromJson(Map<String, dynamic> json) =>
      _$GetProductResponseFromJson(json);
}
