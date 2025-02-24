import 'package:crypto_test/constants/routes.dart';
import 'package:crypto_test/constants/strings.dart';
import 'package:crypto_test/model/crypto_data/crypto_data.dart';
import 'package:crypto_test/repository/crypto_data_repository_impl.dart';
import 'package:crypto_test/service/api_service.dart';
import 'package:crypto_test/ui/components/app_snackbar.dart';
import 'package:crypto_test/ui/pages/main/main_page_state.dart';
import 'package:crypto_test/utils/network_util.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPageCubit extends Cubit<MainPageState> {
  MainPageCubit() : super(MainPageState());

  CryptoCurrenciesRepositoryImpl cryptoDataRepository =
      CryptoCurrenciesRepositoryImpl(apiService: ApiService(Dio()));

  Future<void> init(BuildContext context) async {
    if (await checkInternetConnection()) {
      final result = await cryptoDataRepository.getCryptoData();
      result.fold(
        (failure) {
          if (context.mounted) {
            AppSnackBars.showErrorSnackBar(context, failure.toString());
          }
        },
        (success) {
          AppSnackBars.showSuccessSnackBar(context, AppStrings.success);
          emit(state.copyWith(cryptoDataList: success, isLoading: false));
        },
      );
    }
  }

  void onItemTap(CryptoData cryptoData, BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.info, arguments: cryptoData);
  }
}
