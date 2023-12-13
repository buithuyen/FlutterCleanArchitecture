import 'package:flutter_clean_architecture/domain/entity/restaurant.dart';

abstract class RestaurantRepository {
  Future<List<Restaurant>> getRestaurants({int page = 0});
  
}
