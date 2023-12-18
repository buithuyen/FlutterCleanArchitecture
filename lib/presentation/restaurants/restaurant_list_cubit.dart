import 'package:flutter_clean_architecture/domain/respository/restaurant_respository.dart';
import 'package:flutter_clean_architecture/presentation/base/base_cubit.dart';
import 'package:flutter_clean_architecture/presentation/restaurants/restaurant_list_data.dart';
import 'package:injectable/injectable.dart';

@injectable
class RestaurantListCubit extends BaseCubit<RestaurantListData> {
  RestaurantListCubit({required RestaurantRepository restaurantRepository})
      : _restaurantRepository = restaurantRepository,
        super(RestaurantListData());

  final RestaurantRepository _restaurantRepository;

  @override
  void dispose() {}

  void refreshRestaurantList() {

  }

  void getMoreRestaurants() {
    
  }
}
