import 'package:freezed_annotation/freezed_annotation.dart';

part 'checkout_request.freezed.dart';
part 'checkout_request.g.dart';

@freezed
class CheckoutRequest with _$CheckoutRequest {
  const factory CheckoutRequest({
    required List<int> products,
  }) = _CheckoutRequest;

  factory CheckoutRequest.fromJson(Map<String, dynamic> json) =>
      _$CheckoutRequestFromJson(json);
}
