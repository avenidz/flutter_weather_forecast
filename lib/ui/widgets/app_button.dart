import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_weather_forecast/generated/locale_keys.g.dart';
import 'package:flutter_weather_forecast/resources/colors.dart';

class AppButton extends StatefulWidget {
  const AppButton({Key? key, this.isPrimaryButton = true}) : super(key: key);

  final bool isPrimaryButton;

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: widget.isPrimaryButton ? ColorRes.primary : ColorRes.buttonLogout.withOpacity(.5),
          borderRadius: BorderRadius.circular(15)),
      child: Text(
        LocaleKeys.button_login.tr(),
        textAlign: TextAlign.center,
        style: const TextStyle(color: ColorRes.whiteText, fontSize: 15),
      ),
    );
  }
}
