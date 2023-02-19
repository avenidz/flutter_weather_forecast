import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_weather_forecast/generated/locale_keys.g.dart';
import 'package:flutter_weather_forecast/resources/colors.dart';

import 'log_out_button.dart';

Widget appBar() {
  return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Container(
              margin: const EdgeInsets.only(left: 10),
              child: const Icon(
                Icons.cloud,
                size: 50,
                color: ColorRes.primary,
              )),
          const Spacer(),
          Text(
            LocaleKeys.app_name.tr(),
            style: const TextStyle(fontSize: 25, color: ColorRes.primary),
          ),
          const Spacer(),
          const Logout()
        ],
      ));
}
