import 'package:flutter_weather_forecast/app/app_base_view_model.dart';
import 'package:flutter_weather_forecast/core/models/main_weather_object.dart';

class HomePageViewModel extends AppBaseViewModel {
  late MainWeatherObject? mainWeatherObject;

  void init() async {}

  void navigateToWeatherDetails() async {
   mainWeatherObject = await apiServices.getWeathers();
   notifyListeners();
    print(mainWeatherObject);
  }
}
