import 'package:freezed_annotation/freezed_annotation.dart';

part 'crypto_price.freezed.dart';
part 'crypto_price.g.dart';

@freezed
class CryptoPrice with _$CryptoPrice {
  factory CryptoPrice({
    required List<List<double>> prices,
    required List<List<double>> market_caps,
    required List<List<double>> total_volumes,
  }) = _CryptoPrice;

  factory CryptoPrice.fromJson(Map<String, dynamic> json) =>
      _$CryptoPriceFromJson(json);
}
