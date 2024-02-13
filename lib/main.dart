import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:weather_app_task_mohamed_ebrahim/core/helper/binding.dart';
import 'package:weather_app_task_mohamed_ebrahim/core/resources/constants.dart';
import 'package:weather_app_task_mohamed_ebrahim/core/resources/strings_manager.dart';
import 'package:weather_app_task_mohamed_ebrahim/view/home.dart';
import 'package:weather_app_task_mohamed_ebrahim/view/no_internet.dart';
import 'package:weather_app_task_mohamed_ebrahim/view/splash.dart';
import 'package:weather_app_task_mohamed_ebrahim/view/weather_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize:
            const Size(AppConstants.appSizeWidth, AppConstants.appSizeHeight),
        builder: (constex, con) => GetMaterialApp(
              initialBinding: Binding(),
              debugShowCheckedModeBanner: false,
              title: AppStrings.titleOfApp,
              theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                useMaterial3: true,
              ),
              home: const Splash(),
              routes: {
                '/home': (context) => const Home(),
                '/WeatherDetail': (context) => WeatherDetails(),
                '/nointernetconnection': (context) =>
                    const NoInternetConnection(),
              },
              getPages: [
                GetPage(
                  name: '/home',
                  page: () => const Home(),
                ),
                GetPage(
                  name: '/WeatherDetail',
                  page: () => WeatherDetails(),
                ),
                GetPage(
                  name: '/nointernetconnection',
                  page: () => const NoInternetConnection(),
                ),
              ],
            ));
  }
}
