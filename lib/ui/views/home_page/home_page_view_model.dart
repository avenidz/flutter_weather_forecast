import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_weather_forecast/app/app.router.dart';
import 'package:flutter_weather_forecast/app/app_base_view_model.dart';
import 'package:flutter_weather_forecast/core/models/geocoding_object.dart';
import 'package:flutter_weather_forecast/core/models/main_weather_object.dart';
import 'package:flutter_weather_forecast/generated/locale_keys.g.dart';

class HomePageViewModel extends AppBaseViewModel {
  late MainWeatherObject? mainWeatherObject;
  late GeocodingObject? geocodingObjet;
  final locationNameController = TextEditingController();

  void init() async {}

  void navigateToWeatherDetails() async {
    if (locationNameController.text == '') {
      snackBarServices.showSnackbar(message: LocaleKeys.error_empty_field.tr());
      return;
    }
    geocodingObjet = await apiServices.getCoordinates(locationNameController.text);
    geocodingObjet != null ? showWeatherDetailsPage() : snackBarServices.showSnackbar(message: 'not found');
  }

  void showWeatherDetailsPage() async {
    mainWeatherObject = await apiServices.getWeathers(geocodingObjet!.lat, geocodingObjet!.lon);
    navigationService.navigateToWeatherDetails(mainWeatherObject: mainWeatherObject!);
  }
}
