// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crypto_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CryptoDataImpl _$$CryptoDataImplFromJson(Map<String, dynamic> json) =>
    _$CryptoDataImpl(
      id: json['id'] as String?,
      symbol: json['symbol'] as String?,
      name: json['name'] as String?,
      image: json['image'] as String?,
      currentPrice: (json['current_price'] as num?)?.toDouble(),
      marketCap: (json['market_cap'] as num?)?.toInt(),
      marketCapRank: (json['market_cap_rank'] as num?)?.toInt(),
      high24h: (json['high_24h'] as num?)?.toInt(),
      low24h: (json['low_24h'] as num?)?.toInt(),
      weeklyPriceData: json['sparkline_in_7d'] == null
          ? null
          : WeeklyPriceData.fromJson(
              json['sparkline_in_7d'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CryptoDataImplToJson(_$CryptoDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'symbol': instance.symbol,
      'name': instance.name,
      'image': instance.image,
      'current_price': instance.currentPrice,
      'market_cap': instance.marketCap,
      'market_cap_rank': instance.marketCapRank,
      'high_24h': instance.high24h,
      'low_24h': instance.low24h,
      'sparkline_in_7d': instance.weeklyPriceData,
    };
