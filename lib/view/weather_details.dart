import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:weather_app_task_mohamed_ebrahim/core/helper/spacing.dart';
import 'package:weather_app_task_mohamed_ebrahim/core/resources/strings_manager.dart';
import 'package:weather_app_task_mohamed_ebrahim/core/resources/values_manager.dart';
import 'package:weather_app_task_mohamed_ebrahim/core/theming/styles.dart';
import 'package:weather_app_task_mohamed_ebrahim/model/weather/weather.dart';
import 'package:weather_app_task_mohamed_ebrahim/view/widgets/column_icon_text.dart';
import 'package:weather_icons/weather_icons.dart';

class WeatherDetails extends StatelessWidget {
  WeatherDetails({super.key});
  Weather weatherDetails = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(AppPadding.p15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(100),
            Center(
              child: Column(
                children: [
                  Text(
                      '${AppStrings.location} ${weatherDetails.location!.name}',
                      style: TextStyles.font25blackBold),
                  verticalSpace(10),
                  weatherDetails.current!.isDay == 1
                      ? Text(AppStrings.tomorow,
                          style: TextStyles.font25blackBold)
                      : Text(AppStrings.today,
                          style: TextStyles.font25blackBold),
                ],
              ),
            ),
            verticalSpace(70),
            Text('${weatherDetails.current!.tempC}°C',
                style: TextStyles.font25blackBold),
            Text(
                '${AppStrings.feelsLike} ${weatherDetails.current!.feelslikeC}°C',
                style: TextStyles.font15blackbold),
            verticalSpace(30),
            Center(
              child: Text('${weatherDetails.current!.condition!.text}',
                  style: TextStyles.font25blackBold),
            ),
            verticalSpace(50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ColumnIconText(
                    icon: WeatherIcons.wind_beaufort_0,
                    textDescription: weatherDetails.current!.windKph,
                    textDetails: weatherDetails.current!.windDir,
                    textTitle: AppStrings.wind,
                    unit: 'Kph'),
                // Column(
                //   children: [
                //     const Icon(
                //       WeatherIcons.wind_beaufort_0,
                //       color: Colors.green,
                //       size: 40,
                //     ),
                //     verticalSpace(20),
                //     Text(
                //      AppStrings.wind,
                //       style:
                //           TextStyles.font20blackbold
                //     ),
                //     Text(
                //       '${weatherDetails.current!.windDir}, ${weatherDetails.current!.windKph} Kph',
                //       style: TextStyles.font15regularblack
                //     ),
                //   ],
                // ),
                ColumnIconText(
                    icon: WeatherIcons.day_rain,
                    textDescription: weatherDetails.current!.precipMm,
                    textDetails: '',
                    textTitle: AppStrings.precipitation,
                    unit: 'mm'),
                // Column(
                //   children: [
                //     const Icon(
                //       WeatherIcons.day_rain,
                //       color: Colors.green,
                //       size: 40,
                //     ),
                //     verticalSpace(20),
                //     Text(
                //       AppStrings.precipitation,
                //       style:
                //           TextStyles.font20blackbold
                //     ),
                //     Text(
                //       '${weatherDetails.current!.precipMm} mm',
                //       style: TextStyles.font15regularblack
                //     ),
                //   ],
                // ),
                ColumnIconText(
                    icon: Icons.visibility_outlined,
                    textDescription: weatherDetails.current!.visKm,
                    textDetails: '',
                    textTitle: AppStrings.visibility,
                    unit: 'mm'),
                // Column(
                //   children: [
                //     const Icon(
                //       Icons.visibility_outlined,
                //       color: Colors.green,
                //       size: 40,
                //     ),
                //     verticalSpace(20),
                //     Text(
                //       AppStrings.visibility,
                //       style:
                //          TextStyles.font20blackbold
                //     ),
                //     Text(
                //       '${weatherDetails.current!.visKm} Km',
                //       style:TextStyles.font15regularblack
                //     ),
                //   ],
                // ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
