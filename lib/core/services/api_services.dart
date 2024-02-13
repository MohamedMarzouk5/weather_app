import 'package:dio/dio.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app_task_mohamed_ebrahim/core/error/exceptions.dart';
import 'package:weather_app_task_mohamed_ebrahim/core/resources/constants.dart';
import 'package:weather_app_task_mohamed_ebrahim/model/error_model/error_massege_model.dart';
import 'package:weather_app_task_mohamed_ebrahim/model/weather/weather.dart';
import 'package:weather_app_task_mohamed_ebrahim/core/services/current_location.dart';

class WeatherRemoteDataSource {
  getCurrentWeather(double latitude, double longitude) async {
    final response = await Dio().get(
      '${AppConstants.baseUrl}/current.json?key=${AppConstants.apiKey}&q=$latitude,$longitude',
      options: Options(
        method: 'GET',
        headers: {'Authorization': 'Bearer ${AppConstants.apiKey}'},
      ),
    );
    if (response.statusCode == 200) {
      return Weather.fromJson(response.data);
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(response.data),
      );
    }
  }

  Future<Weather> getLocationWeather() async {
    Location location = Location();
    Position position = await location.getCurrentLocation();
    Weather weatherData =
        await getCurrentWeather(position.latitude, position.longitude);

    return weatherData;
  }
}
