import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:crypto_test/constants/strings.dart';
import 'package:crypto_test/model/crypto_data/crypto_data.dart';
import 'package:crypto_test/ui/pages/main/main_page_cubit.dart';
import 'package:crypto_test/ui/pages/main/main_page_state.dart';
import 'package:crypto_test/ui/theme/colors.dart';
import 'package:crypto_test/ui/theme/types.dart';
import 'package:crypto_test/ui/utils/widget_helper.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with AfterLayoutMixin<MainPage> {
  final MainPageCubit cubit = MainPageCubit();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainPageCubit, MainPageState>(
      bloc: cubit,
      builder: (context, state) {
        return Scaffold(
          resizeToAvoidBottomInset: true,
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Column(
                children: [
                  const CustomAppBar(),
                  Divider(thickness: 2.h),
                  ListViewCryptoData(
                    isLoading: state.isLoading,
                    cryptoDataList: state.cryptoDataList,
                    onItemTap: cubit.onItemTap,
                  ),
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
    cubit.init(context);
  }
}

class ListViewCryptoData extends StatelessWidget {
  final bool isLoading;
  final List<CryptoData> cryptoDataList;
  final void Function(CryptoData cryptoData, BuildContext context) onItemTap;

  const ListViewCryptoData({
    required this.isLoading,
    required this.cryptoDataList,
    required this.onItemTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: isLoading
          ? const Center(child: CircularProgressIndicator())
          : ListView.separated(
              itemCount: cryptoDataList.length,
              itemBuilder: (BuildContext context, int index) {
                final cryptoData = cryptoDataList[index];

                return GestureDetector(
                  onTap: () => onItemTap(cryptoData, context),
                  child: SizedBox(
                    width: double.infinity,
                    height: 68.w,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 25.w,
                          child: Text(
                            '${index + 1}',
                            textAlign: TextAlign.center,
                            style: AppTypes.f14BoldWhite,
                          ),
                        ),
                        Image.network(
                          cryptoData.image ?? '',
                          width: 25.w,
                          height: 25.h,
                        ),
                        spacerHorizontal(5.w),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              cryptoData.name ?? '',
                              style: AppTypes.f14BoldWhite,
                            ),
                            Text(
                              cryptoData.symbol?.toUpperCase() ?? '',
                              textAlign: TextAlign.start,
                              style: AppTypes.f14BoldWhite38,
                            ),
                          ],
                        ),
                        Expanded(
                          child: Text(
                            '${cryptoData.currentPrice}\$',
                            textAlign: TextAlign.end,
                            style: cryptoData.isGreen()
                                ? AppTypes.f14BoldGreen
                                : AppTypes.f14BoldRed,
                          ),
                        ),
                        spacerHorizontal(5.w),
                        CryptoChart(cryptoData: cryptoData),
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const Divider();
              },
              physics: const BouncingScrollPhysics(),
            ),
    );
  }
}

class CryptoChart extends StatelessWidget {
  const CryptoChart({
    required this.cryptoData,
    super.key,
  });

  final CryptoData cryptoData;

  @override
  Widget build(BuildContext context) {
    final weeklyPrices = cryptoData.weeklyPriceData?.price;

    if (weeklyPrices == null || weeklyPrices.isEmpty) {
      return const SizedBox(
        height: 100,
        child: Center(child: Text('No chart data')),
      );
    }

    final chartData = weeklyPrices.asMap().entries.map((entry) {
      int index = entry.key;
      double? price = entry.value;
      return FlSpot(index.toDouble(), price);
    }).toList();

    return SizedBox(
      width: 100.w,
      child: LineChart(
        LineChartData(
          lineBarsData: [
            LineChartBarData(
              spots: chartData,
              isCurved: true,
              isStrokeCapRound: true,
              belowBarData: BarAreaData(),
              dotData: const FlDotData(show: false),
              color: cryptoData.isGreen() ? AppColors.green : AppColors.red,
            ),
          ],
          titlesData: const FlTitlesData(show: false),
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.w),
      child: Row(
        children: [
          SizedBox(
            width: 25.w,
            child: Text(
              '#',
              textAlign: TextAlign.center,
              style: AppTypes.f14BoldWhite,
            ),
          ),
          Text(
            AppStrings.name,
            style: AppTypes.f14BoldWhite,
          ),
          Expanded(
            child: Text(
              AppStrings.price,
              textAlign: TextAlign.end,
              style: AppTypes.f14BoldWhite,
            ),
          ),
          spacerHorizontal(5.w),
          SizedBox(
            width: 100.w,
            child: Text(
              AppStrings.last7Days,
              textAlign: TextAlign.center,
              style: AppTypes.f14BoldWhite,
            ),
          ),
        ],
      ),
    );
  }
}
