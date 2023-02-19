import 'package:flutter_weather_forecast/core/services/api_services.dart';
import 'package:flutter_weather_forecast/core/services/api_services_impl.dart';
import 'package:flutter_weather_forecast/ui/views/login_view/login_view.dart';
import 'package:flutter_weather_forecast/ui/views/weather_details_page/weather_details_page.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

import '../ui/views/home_page/home_page.dart';

@StackedApp(routes: [
  CustomRoute(page: HomePage, name: 'HomePage', transitionsBuilder: TransitionsBuilders.fadeIn),
  CustomRoute(page: LoginView, name: 'LoginView', initial: true),
  CustomRoute(page: WeatherDetailsPage, name: 'WeatherDetails', transitionsBuilder: TransitionsBuilders.fadeIn)
], dependencies: [
  LazySingleton(classType: NavigationService),
  LazySingleton(classType: DialogService),
  LazySingleton(classType: SnackbarService),
  LazySingleton(classType: BottomSheetService),
  LazySingleton(classType: ApiServicesImpl, asType: ApiServices, resolveUsing: ApiServicesImpl.getInstance),
])
class App {}
