import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_weather_forecast/generated/locale_keys.g.dart';
import 'package:flutter_weather_forecast/resources/colors.dart';
import 'package:flutter_weather_forecast/ui/widgets/app_button.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: loginView(),
      ),
    );
  }

  Widget loginView() {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(
            Icons.cloud,
            size: 100,
            color: ColorRes.primary,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            LocaleKeys.label_welcome.tr(),
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 22,
              color: ColorRes.primary,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(margin: const EdgeInsets.only(left: 25, right: 25), child: const AppButton())
        ],
      ),
    );
  }
}
