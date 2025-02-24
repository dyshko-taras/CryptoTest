import 'package:crypto_test/model/crypto_data/crypto_data.dart';
import 'package:crypto_test/repository/%D1%81rypto_data_repository.dart';
import 'package:crypto_test/service/api_service.dart';
import 'package:dartz/dartz.dart';

class CryptoCurrenciesRepositoryImpl implements CryptoDataRepository {
  final ApiService apiService;

  CryptoCurrenciesRepositoryImpl({required this.apiService});

  @override
  Future<Either<String, List<String>>> getSupportedCurrencies() async {
    try {
      final currencies = await apiService.getSupportedCurrencies();
      return Right(currencies);
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, List<CryptoData>>> getCryptoData() async {
    try {
      List<String> ids = [
        'bitcoin',
        'ethereum',
        'tether',
        'binancecoin',
        'solana',
        'ripple',
        'usd-coin',
        'cardano',
        'dogecoin',
        'toncoin',
        'shiba-inu',
        'avalanche-2',
        'tron',
        'polygon',
        'wrapped-bitcoin',
        'litecoin',
        'polkadot',
        'bitcoin-cash',
        'chainlink',
        'dai',
        'bitcoin-sv',
        'ethereum-classic',
        'stellar',
        'monero',
        'filecoin',
        'cosmos',
        'internet-computer',
        'immutable-x',
        'near-protocol',
        'leo-token',
      ];

      final listCryptoData = await apiService.getCryptoData(ids.join(','));
      return Right(listCryptoData);
    } catch (e) {
      return Left(e.toString());
    }
  }
}
