import 'package:flutter_clean_architecture/domain/entity/location.dart';

class LocationDTO extends Location {
  LocationDTO({
    super.lat,
    super.lng,
  });

  factory LocationDTO.fromJson(Map<String, dynamic> json) => LocationDTO(
        lat: json['lat'] as double ,
        lng: json['lng'] as double,
      );

  Map<String, dynamic> toJson() => {
        'lat': lat,
        'lng': lng,
      };
}
