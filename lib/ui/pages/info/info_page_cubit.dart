import 'dart:developer';

import 'package:crypto_test/constants/strings.dart';
import 'package:crypto_test/model/crypto_data/crypto_data.dart';
import 'package:crypto_test/repository/crypto_data_repository_impl.dart';
import 'package:crypto_test/service/api_service.dart';
import 'package:crypto_test/ui/components/app_snackbar.dart';
import 'package:crypto_test/ui/pages/info/info_page_state.dart';
import 'package:crypto_test/utils/network_util.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InfoPageCubit extends Cubit<InfoPageState> {
  InfoPageCubit() : super(InfoPageState());

  CryptoCurrenciesRepositoryImpl cryptoDataRepository =
      CryptoCurrenciesRepositoryImpl(apiService: ApiService(Dio()));

  Future<void> init(BuildContext context, CryptoData cryptoData) async {
    emit(state.copyWith(cryptoData: cryptoData));
    on1DTap(context);
    emit(state.copyWith(isLoading: false));
  }

  Future<void> on1DTap(BuildContext context) async {
    emit(state.copyWith(isLoading: true));
    await _getCryptoPrice('1', context);
    emit(state.copyWith(currentIndex: 0, isLoading: false));
  }

  Future<void> on7DTap(BuildContext context) async {
    emit(state.copyWith(isLoading: true));
    await _getCryptoPrice('7', context);
    emit(state.copyWith(currentIndex: 1, isLoading: false));
  }

  Future<void> on30DTap(BuildContext context) async {
    emit(state.copyWith(isLoading: true));
    await _getCryptoPrice('30', context);
    emit(state.copyWith(currentIndex: 2, isLoading: false));
  }

  Future<void> _getCryptoPrice(String days, BuildContext context) async {
    if (await checkInternetConnection()) {
      final result = await cryptoDataRepository.getCryptoPrice(
          state.cryptoData?.id ?? '', days);
      result.fold(
        (failure) {
          if (context.mounted) {
            AppSnackBars.showErrorSnackBar(context, failure.toString());
            log(failure);
          }
        },
        (success) {
          AppSnackBars.showSuccessSnackBar(context, AppStrings.success);
          emit(state.copyWith(cryptoPriceList: success, isLoading: false));
        },
      );
    }
  }
}
