import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_weather_forecast/core/models/main_weather_object.dart';
import 'package:flutter_weather_forecast/generated/locale_keys.g.dart';
import 'package:flutter_weather_forecast/resources/colors.dart';
import 'package:flutter_weather_forecast/ui/helpers/date_Helper.dart';
import 'package:flutter_weather_forecast/ui/views/weather_details_page/weather_details_page_view_model.dart';
import 'package:flutter_weather_forecast/ui/widgets/appBar.dart';
import 'package:stacked/stacked.dart';

class WeatherDetailsPage extends StatefulWidget {
  const WeatherDetailsPage({Key? key, required this.mainWeatherObject}) : super(key: key);

  final MainWeatherObject mainWeatherObject;

  @override
  State<WeatherDetailsPage> createState() => _WeatherDetailsPageState();
}

class _WeatherDetailsPageState extends State<WeatherDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<WeatherDetailsPageViewModel>.reactive(
        viewModelBuilder: () => WeatherDetailsPageViewModel(mainWeatherObject: widget.mainWeatherObject),
        builder: (context, model, child) {
          return Scaffold(
            body: SafeArea(
              child: SingleChildScrollView(
                child: detailsBody(model),
              ),
            ),
          );
        });
  }

  Widget detailsBody(WeatherDetailsPageViewModel model) {
    return Column(children: [
      appBar(),
      Container(
        padding: const EdgeInsets.fromLTRB(10, 30, 10, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "${LocaleKeys.label_location.tr()}: ${model.mainWeatherObject.cityName}",
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20,),
            Table(
              border: TableBorder.all(color: ColorRes.primary, width: 1, style: BorderStyle.solid),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      Container(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            LocaleKeys.table_date.tr(),
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          )),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            LocaleKeys.table_temp.tr(),
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ))
                    ],
                  )
                ]),
                TableRow(children: [
                  Column(
                    children: [
                      Container(
                          padding: const EdgeInsets.all(10),
                          child: Text(DateHelper.formatDate(model.mainWeatherObject.date!))),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                          padding: const EdgeInsets.all(10),
                          child: Text(model.mainWeatherObject.temperature.toString()))
                    ],
                  )
                ]),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Table(
              border: TableBorder.all(color: ColorRes.primary, width: 1, style: BorderStyle.solid),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      Container(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            LocaleKeys.table_description.tr(),
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          )),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            LocaleKeys.table_main.tr(),
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ))
                    ],
                  )
                ]),
                TableRow(children: [
                  Column(
                    children: [
                      Container(
                          padding: const EdgeInsets.all(10),
                          child: Text(model.mainWeatherObject.description.toString())),
                    ],
                  ),
                  Column(
                    children: [
                      Container(padding: const EdgeInsets.all(10), child: Text(model.mainWeatherObject.main.toString()))
                    ],
                  )
                ]),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Table(
              border: TableBorder.all(color: ColorRes.primary, width: 1, style: BorderStyle.solid),
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      Container(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            LocaleKeys.table_pressure.tr(),
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          )),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            LocaleKeys.table_humidity.tr(),
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ))
                    ],
                  )
                ]),
                TableRow(children: [
                  Column(
                    children: [
                      Container(
                          padding: const EdgeInsets.all(10), child: Text(model.mainWeatherObject.pressure.toString())),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                          padding: const EdgeInsets.all(10), child: Text(model.mainWeatherObject.humidity.toString()))
                    ],
                  )
                ]),
              ],
            ),
          ],
        ),
      )
    ]);
  }
}
