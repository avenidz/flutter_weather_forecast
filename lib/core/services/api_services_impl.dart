import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_weather_forecast/app/constants.dart';
import 'package:flutter_weather_forecast/core/models/main_weather_object.dart';
import 'package:flutter_weather_forecast/core/services/api_services.dart';

class ApiServicesImpl extends ApiServices {
  ApiServicesImpl(super.dio);

  static ApiServicesImpl getInstance() {
    var dio = Dio()..options.baseUrl = Constants.baseUrl;
    return ApiServicesImpl(dio);
  }

  @override
  Future<MainWeatherObject?> getWeathers() async {
    MainWeatherObject? mainWeatherObject;
    final response =
        await dio.get('/data/2.5/weather', queryParameters: {'lat': 9.6729, 'lon': 123.8730, 'appid': Constants.appId});

    if (response.statusCode == HttpStatus.ok) {
      mainWeatherObject = MainWeatherObject.fromJson(response.data);
    }

    return mainWeatherObject;
  }
}
