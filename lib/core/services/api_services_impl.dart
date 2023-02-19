import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_weather_forecast/app/constants.dart';
import 'package:flutter_weather_forecast/core/models/geocoding_object.dart';
import 'package:flutter_weather_forecast/core/models/main_weather_object.dart';
import 'package:flutter_weather_forecast/core/services/api_services.dart';

class ApiServicesImpl extends ApiServices {
  ApiServicesImpl(super.dio);

  static ApiServicesImpl getInstance() {
    var dio = Dio()..options.baseUrl = Constants.baseUrl;
    return ApiServicesImpl(dio);
  }

  @override
  Future<MainWeatherObject?> getWeathers(double lat, double lon) async {
    MainWeatherObject? mainWeatherObject;
    final response =
        await dio.get('/data/2.5/weather', queryParameters: {'lat': lat, 'lon': lon, 'appid': Constants.appId});

    if (response.statusCode == HttpStatus.ok) {
      mainWeatherObject = MainWeatherObject.fromJson(response.data);
    }

    return mainWeatherObject;
  }

  @override
  Future<GeocodingObject?> getCoordinates(String location) async {
    GeocodingObject? geocodingObject;
    final response = await dio.get('/data/2.5/weather', queryParameters: {'appid': Constants.appId, 'q': location});
    if (response.statusCode == HttpStatus.ok) {
      print('ok');
      geocodingObject = GeocodingObject.fromJson(response.data);
    }
    return geocodingObject;
  }
}
