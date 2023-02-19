import 'package:flutter_weather_forecast/app/app.router.dart';
import 'package:flutter_weather_forecast/app/app_base_view_model.dart';

class LoginViewModel extends AppBaseViewModel {

  void navigateToHomePage() {
    navigationService.navigateToHomePage();
  }
}