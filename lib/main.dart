import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:provider/provider.dart';

import 'application/core/routes.dart';
import 'application/core/services/theme_service.dart';
import 'injection.dart' as di_injection;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di_injection.init();
  runApp(const MyApp());
  configLoading();
}

void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.dark
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = Colors.blueGrey
    ..backgroundColor = Colors.white
    ..indicatorColor = Colors.blueGrey
    ..textColor = Colors.blueGrey
    ..maskColor = Colors.blue.withOpacity(0.3)
    ..userInteractions = false
    ..dismissOnTap = false;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeService>(
      create: (context) => ThemeService(),
      child: Consumer<ThemeService>(
        builder: (context, themeService, child) => MaterialApp.router(
          theme: ThemeData(
              useMaterial3: true,
              colorSchemeSeed: Colors.blue,
              brightness: Brightness.light
          ),
          //themeMode:
          //    themeService.isDarkModeOn ? ThemeMode.dark : ThemeMode.light,
          //theme: AppTheme.lightTheme,
          //darkTheme: AppTheme.darkTheme,
          routerConfig: routes,
          builder: EasyLoading.init(),
        ),
      ),
    );
  }
}

