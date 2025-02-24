import 'package:crypto_test/model/crypto_data/crypto_data.dart';
import 'package:crypto_test/model/crypto_price/crypto_price.dart';
import 'package:dartz/dartz.dart';

abstract class CryptoDataRepository {
  Future<Either<String, List<String>>> getSupportedCurrencies();
  Future<Either<String, List<CryptoData>>> getCryptoData();
  Future<Either<String, List<double>>> getCryptoPrice(String cryptoId, String days);
}
