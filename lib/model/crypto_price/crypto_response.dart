
import 'package:freezed_annotation/freezed_annotation.dart';

part 'crypto_response.freezed.dart';
part 'crypto_response.g.dart';

@freezed
class CryptoResponse with _$CryptoResponse {
  factory CryptoResponse({
    required List<List<dynamic>> prices,
  }) = _CryptoResponse;

  factory CryptoResponse.fromJson(Map<String, dynamic> json) =>
      _$CryptoResponseFromJson(json);
}
