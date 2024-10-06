import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:homework_test/src/features/shopping/domain/product_model.dart';

part 'get_product_model.freezed.dart';
part 'get_product_model.g.dart';

@freezed
class GetProductModel with _$GetProductModel {
  const factory GetProductModel({
    required List<ProductModel> items,
    required String nextCursor,
  }) = _GetProductModel;

  factory GetProductModel.fromJson(Map<String, dynamic> json) =>
      _$GetProductModelFromJson(json);
}
