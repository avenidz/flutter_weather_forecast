import 'package:flutter_weather_forecast/app/app_base_view_model.dart';

class HomePageViewModel extends AppBaseViewModel {

  void init()async {
    await apiServices.getWeathers();
  }

  void navigateToWeatherDetails() {

  }
}