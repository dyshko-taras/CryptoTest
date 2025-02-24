import 'package:crypto_test/model/crypto_data/crypto_data.dart';

class MainPageState {
  final List<CryptoData> cryptoDataList;
  final bool isLoading;

  MainPageState({
    this.cryptoDataList = const [],
    this.isLoading = true,
  });

  MainPageState copyWith({
    List<CryptoData>? cryptoDataList,
    bool? isLoading,
  }) {
    return MainPageState(
      cryptoDataList: cryptoDataList ?? this.cryptoDataList,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}
