// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weekly_price_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeeklyPriceDataImpl _$$WeeklyPriceDataImplFromJson(
        Map<String, dynamic> json) =>
    _$WeeklyPriceDataImpl(
      price: (json['price'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$$WeeklyPriceDataImplToJson(
        _$WeeklyPriceDataImpl instance) =>
    <String, dynamic>{
      'price': instance.price,
    };
