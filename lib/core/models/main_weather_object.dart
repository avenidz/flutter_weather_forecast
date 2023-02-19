import 'package:equatable/equatable.dart';

class MainWeatherObject extends Equatable {
  final String? cityName;
  final double? temperature;
  final int? pressure;
  final int? humidity;
  final String? description;
  final String? main;
  final int? date;

  const MainWeatherObject({
    this.cityName,
    this.temperature,
    this.pressure,
    this.humidity,
    this.description,
    this.main,
    this.date,
  });

  factory MainWeatherObject.fromJson(Map<String, dynamic> json) {
    var weather = json['weather'] as List;
    var main = json['main'];
    return MainWeatherObject(
      cityName: json['name'],
      temperature: main['temp'],
      pressure: main['pressure'],
      humidity: main['humidity'],
      description: weather[0]['description'],
      main: weather[0]['main'],
      date: json['dt'],
    );
  }

  @override
  List<Object?> get props => [cityName, temperature, pressure, humidity, description, main, date];
}
