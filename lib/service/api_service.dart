import 'package:crypto_test/constants/app_constants.dart';
import 'package:crypto_test/model/crypto_data/crypto_data.dart';
import 'package:crypto_test/model/crypto_price/crypto_price.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart' hide Headers;

part 'api_service.g.dart';

const headers = <String, dynamic>{
  'accept': 'application/json',
  'x-cg-demo-api-key': AppConstants.apiKey
};

@RestApi(baseUrl: 'https://api.coingecko.com/api/v3')
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET('/simple/supported_vs_currencies')
  @Headers(headers)
  Future<List<String>> getSupportedCurrencies();

  @GET(
    '/coins/markets?vs_currency=usd&order=market_cap_desc&sparkline=true&precision=1',
  )
  @Headers(headers)
  Future<List<CryptoData>> getCryptoData(@Query('ids') String ids);

  @GET('/coins/{crypto}/market_chart?vs_currency=usd&precision=2')
  @Headers(headers)
  Future<CryptoPrice> getCryptoPrice(
    @Path('crypto') String cryptoId,
    @Query('days') String days,
  );
}
