import 'package:freezed_annotation/freezed_annotation.dart';

import 'weekly_price_data.dart';

part 'crypto_data.freezed.dart';
part 'crypto_data.g.dart';

@freezed
class CryptoData with _$CryptoData {
  factory CryptoData({
    String? id,
    String? symbol,
    String? name,
    String? image,
    @JsonKey(name: 'current_price') double? currentPrice,
    @JsonKey(name: 'market_cap') int? marketCap,
    @JsonKey(name: 'market_cap_rank') int? marketCapRank,
    @JsonKey(name: 'high_24h') int? high24h,
    @JsonKey(name: 'low_24h') int? low24h,
    @JsonKey(name: 'sparkline_in_7d') WeeklyPriceData? weeklyPriceData,
  }) = _CryptoData;

  factory CryptoData.fromJson(Map<String, dynamic> json) =>
      _$CryptoDataFromJson(json);

  const CryptoData._();

  bool isGreen() {
    final weeklyPrices = weeklyPriceData?.price;

    if (weeklyPrices == null || weeklyPrices.length < 2) {
      return false;
    }

    final firstPrice = weeklyPrices[0];
    final lastPrice = weeklyPrices.last;

    return firstPrice < lastPrice;
  }
}
