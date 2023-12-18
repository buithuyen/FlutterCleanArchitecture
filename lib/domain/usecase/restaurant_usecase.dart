import 'package:flutter_clean_architecture/domain/entity/restaurant.dart';

abstract class RestaurantUsecase {
  Future<List<Restaurant>> refreshRestaurantListing();
  Future<List<Restaurant>> getMoreRestaurants({int page = 0});
  Future<void> getRestaurantDetail();
}
