import 'package:flutter_weather_forecast/app/app.locator.dart';
import 'package:flutter_weather_forecast/core/services/api_services.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class AppBaseViewModel extends BaseViewModel {
  final navigationService = locator<NavigationService>();
  final apiServices = locator<ApiServices>();
}
