// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurants_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RestaurantResponse _$RestaurantResponseFromJson(Map<String, dynamic> json) =>
    RestaurantResponse(
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => RestaurantDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
