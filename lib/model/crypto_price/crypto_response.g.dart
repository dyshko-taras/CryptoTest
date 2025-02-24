// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crypto_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CryptoResponseImpl _$$CryptoResponseImplFromJson(Map<String, dynamic> json) =>
    _$CryptoResponseImpl(
      prices: (json['prices'] as List<dynamic>)
          .map((e) => e as List<dynamic>)
          .toList(),
    );

Map<String, dynamic> _$$CryptoResponseImplToJson(
        _$CryptoResponseImpl instance) =>
    <String, dynamic>{
      'prices': instance.prices,
    };
