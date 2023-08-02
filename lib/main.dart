import 'package:birthday_app/app/di/injector.dart';
import 'package:birthday_app/app/route/app_router.dart';
import 'package:birthday_app/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  AndroidYandexMap.useAndroidViewSurface = false;

  await initDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, widget) => MaterialApp.router(
        title: 'Birthday App',
        debugShowCheckedModeBanner: false,
        theme: theme(),
        routerConfig: AppRouter().config(),
      ),
      designSize: const Size(375, 753),
    );
  }
}
