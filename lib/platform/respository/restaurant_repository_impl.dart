import 'package:flutter_clean_architecture/domain/entity/restaurant.dart';
import 'package:flutter_clean_architecture/domain/respository/restaurant_respository.dart';

class RestaurantRepostoryImpl extends RestaurantRepository {
  @override
  Future<List<Restaurant>> getRestaurants({int page = 0}) {
    // TODO: implement getRestaurants
    throw UnimplementedError();
  }
  
}