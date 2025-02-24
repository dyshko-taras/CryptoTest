import 'package:crypto_test/model/crypto_data/crypto_data.dart';
import 'package:dartz/dartz.dart';

abstract class CryptoDataRepository {
  Future<Either<String, List<String>>> getSupportedCurrencies();
  Future<Either<String, List<CryptoData>>> getCryptoData();
}