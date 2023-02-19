import 'package:flutter_weather_forecast/app/app_base_view_model.dart';
import 'package:flutter_weather_forecast/core/models/main_weather_object.dart';

class WeatherDetailsPageViewModel extends AppBaseViewModel {
  WeatherDetailsPageViewModel({required this.mainWeatherObject});

  MainWeatherObject mainWeatherObject;
}
