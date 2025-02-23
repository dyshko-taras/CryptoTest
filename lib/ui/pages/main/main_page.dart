import 'package:crypto_test/ui/pages/main/main_page_cubit.dart';
import 'package:crypto_test/ui/pages/main/main_page_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final MainPageCubit cubit = MainPageCubit();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainPageCubit, MainPageState>(
      bloc: cubit,
      builder: (context, state) {
        return Scaffold(
          resizeToAvoidBottomInset: true,
          body: Stack(
            // fit: StackFit.expand,
            // alignment: Alignment.topCenter,
            children: [
            ],
          ),
        );
      },
    );
  }
}
