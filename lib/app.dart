import 'package:crypto_test/constants/routes.dart';
import 'package:crypto_test/translations/messages.dart';
import 'package:crypto_test/ui/pages/info/info_page.dart';
import 'package:crypto_test/ui/pages/main/main_page.dart';
import 'package:crypto_test/ui/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:syncfusion_localizations/syncfusion_localizations.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: GetMaterialApp(
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          SfGlobalLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('en', 'US'),
        ],
        locale: const Locale('en', 'US'),
        translations: Messages(),
        theme: createTheme(),
        initialRoute: AppRoutes.main,
        routes: {
          AppRoutes.main: (context) => const MainPage(),
          AppRoutes.info: (context) => const InfoPage(),
        },
      ),
    );
  }
}
