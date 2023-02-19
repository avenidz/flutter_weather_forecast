import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_weather_forecast/generated/locale_keys.g.dart';
import 'package:flutter_weather_forecast/resources/colors.dart';

class Logout extends StatelessWidget {
  const Logout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: ColorRes.buttonLogout.withOpacity(.5),
        border: Border.all(width: .5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        LocaleKeys.button_logout.tr(),
        style: const TextStyle(
          color: ColorRes.whiteText,
        ),
      ),
    );
  }
}
