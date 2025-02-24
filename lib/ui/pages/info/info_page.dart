import 'package:crypto_test/ui/pages/info/info_page_cubit.dart';
import 'package:crypto_test/ui/pages/info/info_page_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  final InfoPageCubit cubit = InfoPageCubit();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InfoPageCubit, InfoPageState>(
      bloc: cubit,
      builder: (context, state) {
        return Scaffold(
          resizeToAvoidBottomInset: true,
          body: Stack(
            children: [],
          ),
        );
      },
    );
  }
}
