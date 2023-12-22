import 'package:flutter_clean_architecture/platform/networking/dto/restaurant_dto.dart';
import 'package:flutter_clean_architecture/platform/networking/response/response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'restaurants_response.g.dart';

@JsonSerializable(
  fieldRename: FieldRename.none,
  explicitToJson: true,
  createToJson: false,
)
class RestaurantResponse extends Response<List<RestaurantDTO>> {
  RestaurantResponse({super.results});
  factory RestaurantResponse.fromJson(Map<String, dynamic> json) =>
      _$RestaurantResponseFromJson(json);
}
