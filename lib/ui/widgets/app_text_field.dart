import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_weather_forecast/generated/locale_keys.g.dart';
import 'package:flutter_weather_forecast/resources/colors.dart';

class AppTextField extends StatefulWidget {
  const AppTextField({Key? key}) : super(key: key);

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.search),
        hintText: LocaleKeys.text_field_city.tr(),
        border: InputBorder.none,
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: ColorRes.primary), borderRadius: BorderRadius.circular(20)),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: ColorRes.primary), borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
