import 'package:flutter/foundation.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:weather_app_task_mohamed_ebrahim/model/weather/weather.dart';
import 'package:weather_app_task_mohamed_ebrahim/core/services/api_services.dart';

class WeatherController extends GetxController {
  Weather? _weatherModel;
  WeatherRemoteDataSource weatherRemoteDataSource = WeatherRemoteDataSource();
  Weather get weatherModel => _weatherModel!;

  ValueNotifier<bool> get loading => _loading;
  final ValueNotifier<bool> _loading = ValueNotifier(false);
  WeatherController() {
    getLocationWeather();
  }
  getLocationWeather() async {
    _loading.value = true;
    _weatherModel = await weatherRemoteDataSource.getLocationWeather();
    loading.value = false;
    update();
  }
}
