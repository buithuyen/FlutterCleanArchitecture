
import 'package:flutter_clean_architecture/domain/entity/location.dart';
import 'package:flutter_clean_architecture/domain/entity/photo.dart';

abstract class Restaurant {
  Restaurant({
    this.objectId,
    this.location,
    this.name,
    this.photos,
    this.placeId,
    this.priceLevel,
    this.rating,
    this.reference,
    this.userRatingsTotal,
    this.vicinity,
    this.createdAt,
    this.updatedAt,
  });
  final String? objectId;
  final Location? location;
  final String? name;
  final List<Photo>? photos;
  final String? placeId;
  final num? priceLevel;
  final num? rating;
  final String? reference;
  final num? userRatingsTotal;
  final String? vicinity;
  final DateTime? createdAt;
  final DateTime? updatedAt;
}
