import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_weather_forecast/app/app.locator.dart';
import 'package:flutter_weather_forecast/ui/views/application/application_view.dart';

Future<void> main()async {
  setupLocator();
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(const ApplicationView());
}