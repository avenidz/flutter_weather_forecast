import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_weather_forecast/generated/locale_keys.g.dart';
import 'package:flutter_weather_forecast/ui/views/home_page/home_page_view_model.dart';
import 'package:flutter_weather_forecast/ui/widgets/appBar.dart';
import 'package:flutter_weather_forecast/ui/widgets/app_button.dart';
import 'package:flutter_weather_forecast/ui/widgets/app_text_field.dart';
import 'package:stacked/stacked.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomePageViewModel>.reactive(
        viewModelBuilder: () => HomePageViewModel(),
        onViewModelReady: (model) => model.init(),
        builder: (context, model, child) {
          return Scaffold(
            body: SafeArea(child: homePageView(model)),
          );
        });
  }

  Widget homePageView(HomePageViewModel model) {
    return SingleChildScrollView(
      child: Column(
        children: [appBar(), homePageBody(model)],
      ),
    );
  }

  Widget homePageBody(HomePageViewModel model) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 40, 20, 20),
      child: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            AppTextField(
              controller: model.locationNameController,
            ),
            const SizedBox(
              height: 10,
            ),
            AppButton(
              onPressed: model.navigateToWeatherDetails,
              buttonLabel: LocaleKeys.button_display_weather.tr(),
            )
          ],
        ),
      ),
    );
  }

}
