import 'package:dio/dio.dart';
import 'package:flutter_weather_forecast/app/constants.dart';
import 'package:flutter_weather_forecast/core/services/api_services.dart';

class ApiServicesImpl extends ApiServices {
  ApiServicesImpl(super.dio);

  static ApiServicesImpl getInstance() {
    var dio = Dio()
        ..options.baseUrl = Constants.baseUrl;
    return ApiServicesImpl(dio);
  }

  @override
  Future<String> getWeathers() async {
    final response = await dio.get('/data/2.5/weather', queryParameters: {
      'lat': 9.6729,
      'lon': 123.8730,
      'appid': Constants.appId
    });
    print(response.toString());
    return 'ok';
  }


}