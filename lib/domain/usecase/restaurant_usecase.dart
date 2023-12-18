import 'package:flutter_clean_architecture/domain/entity/restaurant.dart';

abstract class RestaurantUsecase {
  Future<List<Restaurant>> getInitialRestaurantList();
  Future<List<Restaurant>> refreshRestaurantList();
  Future<List<Restaurant>> getMoreRestaurants({int page = 0});
  Future<List<Restaurant>> searchRestaurant(String query);
  Future<void> getRestaurantDetail();
}
