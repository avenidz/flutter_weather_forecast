import 'package:equatable/equatable.dart';

class GeocodingObject extends Equatable {
  final String name;
  final String country;
  final double lat;
  final double lon;

  const GeocodingObject({
    required this.name,
    required this.country,
    required this.lat,
    required this.lon,
  });

  factory GeocodingObject.fromJson(Map<String, dynamic> json) {
    var sys = json['sys'];
    var coord = json['coord'];
    return GeocodingObject(
      name: json['name'],
      country: sys['country'],
      lat: coord['lat'],
      lon: coord['lon'],
    );
  }

  @override
  List<Object?> get props => [name, country, lat, lon];
}
