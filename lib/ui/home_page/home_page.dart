import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_weather_forecast/generated/locale_keys.g.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: homePageBody()),
    );
  }

  Widget homePageBody() {
    return SingleChildScrollView(
      child: Column(
        children: [homePageAppBar()],
      ),
    );
  }

  Widget homePageAppBar() {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Text(
        LocaleKeys.app_name.tr(),
        style: const TextStyle(fontSize: 25),
      ),
    );
  }
}
