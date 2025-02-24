// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crypto_price.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CryptoPriceImpl _$$CryptoPriceImplFromJson(Map<String, dynamic> json) =>
    _$CryptoPriceImpl(
      prices: (json['prices'] as List<dynamic>)
          .map((e) =>
              (e as List<dynamic>).map((e) => (e as num).toDouble()).toList())
          .toList(),
      market_caps: (json['market_caps'] as List<dynamic>)
          .map((e) =>
              (e as List<dynamic>).map((e) => (e as num).toDouble()).toList())
          .toList(),
      total_volumes: (json['total_volumes'] as List<dynamic>)
          .map((e) =>
              (e as List<dynamic>).map((e) => (e as num).toDouble()).toList())
          .toList(),
    );

Map<String, dynamic> _$$CryptoPriceImplToJson(_$CryptoPriceImpl instance) =>
    <String, dynamic>{
      'prices': instance.prices,
      'market_caps': instance.market_caps,
      'total_volumes': instance.total_volumes,
    };
