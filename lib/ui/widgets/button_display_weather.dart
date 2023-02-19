import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_weather_forecast/generated/locale_keys.g.dart';
import 'package:flutter_weather_forecast/resources/colors.dart';

class ButtonDisplayWeather extends StatefulWidget {
  const ButtonDisplayWeather({Key? key}) : super(key: key);

  @override
  State<ButtonDisplayWeather> createState() => _ButtonDisplayWeatherState();
}

class _ButtonDisplayWeatherState extends State<ButtonDisplayWeather> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: ColorRes.primary, borderRadius: BorderRadius.circular(15), border: Border.all(width: .5)),
      child: Center(
          child: Text(
        LocaleKeys.button_display_weather.tr(),
        style: const TextStyle(color: ColorRes.whiteText, fontSize: 20),
      )),
    );
  }
}
