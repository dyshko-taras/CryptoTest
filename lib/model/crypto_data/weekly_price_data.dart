import 'package:freezed_annotation/freezed_annotation.dart';

part 'weekly_price_data.freezed.dart';
part 'weekly_price_data.g.dart';

@freezed
class WeeklyPriceData with _$WeeklyPriceData {
  factory WeeklyPriceData({
    List<double>? price,
  }) = _WeeklyPriceData;

  factory WeeklyPriceData.fromJson(Map<String, dynamic> json) =>
      _$WeeklyPriceDataFromJson(json);
}
