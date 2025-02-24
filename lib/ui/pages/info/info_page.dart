import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:crypto_test/constants/strings.dart';
import 'package:crypto_test/model/crypto_data/crypto_data.dart';
import 'package:crypto_test/ui/pages/info/info_page_cubit.dart';
import 'package:crypto_test/ui/pages/info/info_page_state.dart';
import 'package:crypto_test/ui/theme/button.dart';
import 'package:crypto_test/ui/theme/colors.dart';
import 'package:crypto_test/ui/theme/types.dart';
import 'package:crypto_test/ui/utils/widget_helper.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> with AfterLayoutMixin<InfoPage> {
  final InfoPageCubit cubit = InfoPageCubit();
  CryptoData? _cryptoData;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final args = ModalRoute.of(context)?.settings.arguments;
    if (args is CryptoData) {
      _cryptoData = args;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InfoPageCubit, InfoPageState>(
      bloc: cubit,
      builder: (context, state) {
        return Scaffold(
          resizeToAvoidBottomInset: true,
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.network(
                        state.cryptoData?.image ?? '',
                        width: 50.w,
                        height: 50.h,
                      ),
                      spacerHorizontal(5.w),
                      Text(
                        state.cryptoData?.name ?? '',
                        style: AppTypes.f14BoldWhite,
                      ),
                      spacerHorizontal(5.w),
                      Text(
                        state.cryptoData?.symbol?.toUpperCase() ?? '',
                        style: AppTypes.f14BoldWhite38,
                      ),
                      spacerAdaptive(),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 8.w,
                          vertical: 8.h,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.lightBlue,
                          borderRadius: BorderRadius.circular(5.r),
                          border:
                              Border.all(color: AppColors.white, width: 1.w),
                        ),
                        child: Text(
                          '#${state.cryptoData?.marketCapRank.toString()}',
                          style: AppTypes.f24BoldWhite,
                        ),
                      ),
                    ],
                  ),
                  spacerVertical(10.h),
                  Row(
                    children: [
                      BoxInfo(
                        title: AppStrings.currentPrice,
                        value: state.cryptoData?.currentPrice.toString() ?? '',
                      ),
                      spacerHorizontal(10.h),
                      BoxInfo(
                        title: AppStrings.marketCap,
                        value: state.cryptoData?.marketCap.toString() ?? '',
                      ),
                    ],
                  ),
                  spacerVertical(10.h),
                  Row(
                    children: [
                      BoxInfo(
                        title: AppStrings.high24h,
                        value: state.cryptoData?.high24h.toString() ?? '',
                      ),
                      spacerHorizontal(10.h),
                      BoxInfo(
                        title: AppStrings.low24h,
                        value: state.cryptoData?.low24h.toString() ?? '',
                      ),
                    ],
                  ),
                  spacerVertical(20.h),
                  Container(
                    width: 240.w,
                    padding: EdgeInsets.all(5.w),
                    decoration: BoxDecoration(
                      color: AppColors.lightBlue,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () => cubit.on1DTap(context),
                          style: state.currentIndex == 0
                              ? ButtonStyles.blueButton()
                              : ButtonStyles.transparentButton(),
                          child: Text(
                            '1D',
                            style: AppTypes.f14BoldWhite,
                          ),
                        ),
                        spacerHorizontal(10.w),
                        ElevatedButton(
                          onPressed: () => cubit.on7DTap(context),
                          style: state.currentIndex == 1
                              ? ButtonStyles.blueButton()
                              : ButtonStyles.transparentButton(),
                          child: Text(
                            '7D',
                            style: AppTypes.f14BoldWhite,
                          ),
                        ),
                        spacerHorizontal(10.w),
                        ElevatedButton(
                          onPressed: () => cubit.on30DTap(context),
                          style: state.currentIndex == 2
                              ? ButtonStyles.blueButton()
                              : ButtonStyles.transparentButton(),
                          child: Text(
                            '30D',
                            style: AppTypes.f14BoldWhite,
                          ),
                        ),
                      ],
                    ),
                  ),
                  spacerVertical(20.h),
                  PriceChart(cryptoPriceList: state.cryptoPriceList),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    cubit.init(context, _cryptoData ?? CryptoData());
  }
}

class BoxInfo extends StatelessWidget {
  const BoxInfo({
    required this.title,
    required this.value,
    super.key,
  });

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(color: AppColors.white, width: 1.w),
        ),
        child: Column(
          children: [
            Text(
              title,
              style: AppTypes.f14BoldWhite38,
            ),
            spacerHorizontal(15.w),
            Text(
              '$value \$',
              style: AppTypes.f14BoldWhite,
            ),
            spacerHorizontal(15.w),
          ],
        ),
      ),
    );
  }
}

class PriceChart extends StatelessWidget {
  const PriceChart({
    required this.cryptoPriceList,
    super.key,
  });

  final List<double> cryptoPriceList;

  @override
  Widget build(BuildContext context) {
    if (cryptoPriceList.isEmpty) {
      return const SizedBox(
        height: 100,
        child: Center(child: Text('No chart data')),
      );
    }

    final chartData = cryptoPriceList.asMap().entries.map((entry) {
      int index = entry.key;
      double? price = entry.value;
      return FlSpot(index.toDouble(), price);
    }).toList();

    bool isGreen = cryptoPriceList.first < cryptoPriceList.last;

    return SizedBox(
      width: double.infinity,
      height: 200.h,
      child: LineChart(
        LineChartData(
          lineBarsData: [
            LineChartBarData(
              spots: chartData,
              isCurved: true,
              isStrokeCapRound: true,
              belowBarData: BarAreaData(),
              dotData: const FlDotData(show: false),
              color: isGreen ? AppColors.green : AppColors.red,
            ),
          ],
          titlesData: const FlTitlesData(show: false),
        ),
      ),
    );
  }
}
