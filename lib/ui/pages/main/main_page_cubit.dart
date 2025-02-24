import 'dart:developer';

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
    //     if (await checkInternetConnection()) {
    //   result.fold(
    //     (failure) {
    //       if (context.mounted) {
    //         AppSnackBars.showErrorSnackBar(context, failure);
    //       }
    //     },
    //     (todo) {
    //       AppSnackBars.showSuccessSnackBar(context, 'Success');
    //     },
    //   );
    // } else {
    //   if (context.mounted) {
    //     AppSnackBars.showErrorSnackBar(context, AppStrings.connectionError);
    //   }
    // }
    if (await checkInternetConnection()) {
      final result = await cryptoDataRepository.getCryptoData();
      result.fold(
        (failure) {
          if (context.mounted) {
            AppSnackBars.showErrorSnackBar(context, failure.toString());
          }
        },
        (success) {
          AppSnackBars.showSuccessSnackBar(context, 'Success');
          emit(state.copyWith(cryptoDataList: success, isLoading: false));
        },
      );
    }
  }
}
