import 'package:equatable/equatable.dart';

class MainWeatherObject extends Equatable {
  final String? areaLocated;
  final String? date;
  final double? temp;
  final double? pressure;
  final double? humidity;
  final List<String>? weatherDescription;
  
  const MainWeatherObject({
    this.areaLocated,
    this.date,
    this.temp,
    this.pressure,
    this.humidity,
    this.weatherDescription,
});
  
  factory MainWeatherObject.fromJson(Map<String, dynamic> json) {
    return MainWeatherObject(
      areaLocated: json['areaLocated'] as String,
      date: json['dt'] as String,
      temp: json['temp'] as double,
      pressure: json['pressure'] as double,
      humidity: json['humidity'] as double,
      weatherDescription: json['weather'] as List<String>,
    );
  }

  @override
  List<Object?> get props => [
    areaLocated, date, temp, pressure, humidity, weatherDescription,
  ];
  
}