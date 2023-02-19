// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i6;
import 'package:flutter/material.dart';
import 'package:flutter_weather_forecast/core/models/main_weather_object.dart'
    as _i7;
import 'package:flutter_weather_forecast/ui/views/home_page/home_page.dart'
    as _i2;
import 'package:flutter_weather_forecast/ui/views/login_view/login_view.dart'
    as _i3;
import 'package:flutter_weather_forecast/ui/views/weather_details_page/weather_details_page.dart'
    as _i4;
import 'package:stacked/src/code_generation/router_annotation/transitions_builders.dart'
    as _i5;
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i8;

class Routes {
  static const HomePage = '/home-page';

  static const LoginView = '/';

  static const WeatherDetails = '/weather-details-page';

  static const all = <String>{
    HomePage,
    LoginView,
    WeatherDetails,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.HomePage,
      page: _i2.HomePage,
    ),
    _i1.RouteDef(
      Routes.LoginView,
      page: _i3.LoginView,
    ),
    _i1.RouteDef(
      Routes.WeatherDetails,
      page: _i4.WeatherDetailsPage,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.HomePage: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const _i2.HomePage(),
        settings: data,
        transitionsBuilder: data.transition ?? _i5.TransitionsBuilders.fadeIn,
      );
    },
    _i3.LoginView: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const _i3.LoginView(),
        settings: data,
        transitionsBuilder: data.transition ??
            (context, animation, secondaryAnimation, child) {
              return child;
            },
      );
    },
    _i4.WeatherDetailsPage: (data) {
      final args = data.getArgs<WeatherDetailsPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            _i4.WeatherDetailsPage(
                key: args.key, mainWeatherObject: args.mainWeatherObject),
        settings: data,
        transitionsBuilder: data.transition ?? _i5.TransitionsBuilders.fadeIn,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;
  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class WeatherDetailsPageArguments {
  const WeatherDetailsPageArguments({
    this.key,
    required this.mainWeatherObject,
  });

  final _i6.Key? key;

  final _i7.MainWeatherObject mainWeatherObject;
}

extension NavigatorStateExtension on _i8.NavigationService {
  Future<dynamic> navigateToHomePage([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.HomePage,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToLoginView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.LoginView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToWeatherDetails({
    _i6.Key? key,
    required _i7.MainWeatherObject mainWeatherObject,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.WeatherDetails,
        arguments: WeatherDetailsPageArguments(
            key: key, mainWeatherObject: mainWeatherObject),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithHomePage([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.HomePage,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithLoginView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.LoginView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithWeatherDetails({
    _i6.Key? key,
    required _i7.MainWeatherObject mainWeatherObject,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.WeatherDetails,
        arguments: WeatherDetailsPageArguments(
            key: key, mainWeatherObject: mainWeatherObject),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
