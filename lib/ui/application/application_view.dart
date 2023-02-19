import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_weather_forecast/app/app.router.dart';
import 'package:get/get.dart';
import 'package:stacked_services/stacked_services.dart';

class ApplicationView extends StatefulWidget {
  const ApplicationView({Key? key}) : super(key: key);

  @override
  State<ApplicationView> createState() => _ApplicationViewState();
}

class _ApplicationViewState extends State<ApplicationView> {
  @override
  Widget build(BuildContext context) {
    return EasyLocalization(
        supportedLocales: const [Locale('en')],
        path: 'assets/translations',
        saveLocale: true,
        fallbackLocale: const Locale('en'),
        startLocale: const Locale('en'),
        child: const AppViews());
  }
}

class AppViews extends StatefulWidget {
  const AppViews({Key? key}) : super(key: key);

  @override
  State<AppViews> createState() => _AppViewsState();
}

class _AppViewsState extends State<AppViews> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Weather',
      localizationsDelegates: context.localizationDelegates,
      locale: context.locale,
      supportedLocales: context.supportedLocales,
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: StackedRouter().onGenerateRoute,
    );
  }
}
