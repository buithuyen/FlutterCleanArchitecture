import 'package:flutter_clean_architecture/domain/entity/restaurant.dart';
import 'package:flutter_clean_architecture/platform/networking/dto/location_dto.dart';
import 'package:flutter_clean_architecture/platform/networking/dto/photo_dto.dart';

class RestaurantDTO extends Restaurant {
  RestaurantDTO({
    super.objectId,
    super.location,
    super.name,
    super.photos,
    super.placeId,
    super.priceLevel,
    super.rating,
    super.reference,
    super.userRatingsTotal,
    super.vicinity,
    super.createdAt,
    super.updatedAt,
  });

  factory RestaurantDTO.fromJson(Map<String, dynamic> json) => RestaurantDTO(
        objectId: json['objectId'] as String?,
        location: json['location'] == null
            ? null
            : LocationDTO.fromJson(json['location'] as Map<String, dynamic>),
        name: json['name'] as String?,
        photos: json['photos'] == null
            ? []
            : List<PhotoDTO>.from(
                (json['photos'] as Iterable<dynamic>).map(
                  (x) => PhotoDTO.fromJson(x as Map<String, dynamic>),
                ),
              ),
        placeId: json['place_id'] as String?,
        priceLevel: json['price_level'] as num?,
        rating: json['rating'] as num?,
        reference: json['reference'] as String?,
        userRatingsTotal: json['user_ratings_total'] as num?,
        vicinity: json['vicinity'] as String?,
        createdAt: json['createdAt'] == null
            ? null
            : DateTime.parse(json['createdAt'] as String),
        updatedAt: json['updatedAt'] == null
            ? null
            : DateTime.parse(json['updatedAt'] as String),
      );
}
