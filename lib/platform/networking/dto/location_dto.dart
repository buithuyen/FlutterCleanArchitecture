import 'package:flutter_clean_architecture/domain/entity/location.dart';

class LocationDTO extends Location {
  LocationDTO({
    super.lat,
    super.lng,
  });

  factory LocationDTO.fromJson(Map<String, dynamic> json) => LocationDTO(
        lat: json['lat'] as num?,
        lng: json['lng'] as num?,
      );
}
