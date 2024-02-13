import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app_task_mohamed_ebrahim/controller/weather_controller.dart';
import 'package:weather_app_task_mohamed_ebrahim/core/resources/assets_manager.dart';
import 'package:weather_app_task_mohamed_ebrahim/core/resources/strings_manager.dart';
import 'package:weather_app_task_mohamed_ebrahim/core/theming/styles.dart';
import 'package:weather_app_task_mohamed_ebrahim/view/widgets/app_text.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder(
          init: WeatherController(),
          builder: (controller) => controller.loading.value == true
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : Stack(children: [
                  Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(ImageAssets.backgroundImage),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                              '${controller.weatherModel.current!.tempC!.round()}°C',
                              style: TextStyles.font35WhiteBold),
                          Text('${controller.weatherModel.location!.name}',
                              style: TextStyles.font25WhiteBold),
                          TextButton(
                              onPressed: () {
                                Get.toNamed('WeatherDetail',
                                    arguments: controller.weatherModel);
                              },
                              child: AppText(
                                text: AppStrings.details,
                                textStyle: TextStyles.font20WhiteBold,
                              )),
                        ],
                      ),
                    ),
                  ),
                ])),
    );
  }
}
