import 'package:dio/dio.dart';
import 'package:flutter_weather_forecast/core/models/main_weather_object.dart';

abstract class ApiServices {

ApiServices(this.dio);
final Dio dio;

Future<MainWeatherObject?> getWeathers();

}