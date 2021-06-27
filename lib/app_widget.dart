import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pay_flow/modules/BarCodeScanner/bar_code_scanner_page.dart';
import 'core/themes/app_colors.dart';

import 'modules/Login/login_page.dart';
import 'modules/Home/home_page.dart';
import 'modules/SplashPage/splash_page.dart';

class MyApp extends StatelessWidget {
  MyApp() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PayFlow',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
        primaryColor: AppColors.primary,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => SplashPage(),
        '/login': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/barcode': (context) => BarCodeScannerPage(),
      },
    );
  }
}
