import 'package:flutter_clean_architecture/domain/entity/restaurant.dart';
import 'package:flutter_clean_architecture/domain/respository/restaurant_respository.dart';
import 'package:flutter_clean_architecture/domain/usecase/restaurant_usecase.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: RestaurantUsecase)
class RestaurantUsecaseImpl extends RestaurantUsecase {
  RestaurantUsecaseImpl({required RestaurantRepository restaurantRepository})
      : _restaurantRepository = restaurantRepository;

  final RestaurantRepository _restaurantRepository;

  @override
  Future<List<Restaurant>> getInitialRestaurantList() {
    return _restaurantRepository.getRestaurants();
  }

  @override
  Future<List<Restaurant>> refreshRestaurantList() {
    return _restaurantRepository.getRestaurants();
  }

  @override
  Future<List<Restaurant>> searchRestaurant(String query) {
    // TODO: implement searchRestaurant
    throw UnimplementedError();
  }

  @override
  Future<List<Restaurant>> getMoreRestaurants({int page = 0}) {
    return _restaurantRepository.getRestaurants(page: page);
  }

  @override
  Future<void> getRestaurantDetail() {
    // TODO: implement getRestaurantDetail
    throw UnimplementedError();
  }
}
