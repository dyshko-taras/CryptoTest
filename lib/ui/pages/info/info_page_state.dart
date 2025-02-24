import 'package:crypto_test/model/crypto_data/crypto_data.dart';

class InfoPageState {
  final int currentIndex;
  final bool isLoading;
  final CryptoData? cryptoData;
  final List<double> cryptoPriceList;

  InfoPageState({
    this.cryptoData,
    this.currentIndex = 0,
    this.cryptoPriceList = const [],
    this.isLoading = true,
  });


  InfoPageState copyWith({
    int? currentIndex,
    bool? isLoading,
    CryptoData? cryptoData,
    List<double>? cryptoPriceList,
  }) {
    return InfoPageState(
      currentIndex: currentIndex ?? this.currentIndex,
      isLoading: isLoading ?? this.isLoading,
      cryptoData: cryptoData ?? this.cryptoData,
      cryptoPriceList: cryptoPriceList ?? this.cryptoPriceList,
    );
  }
}
