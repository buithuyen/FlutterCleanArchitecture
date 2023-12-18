import 'package:flutter_clean_architecture/domain/entity/restaurant.dart';
import 'package:flutter_clean_architecture/domain/respository/restaurant_respository.dart';
import 'package:flutter_clean_architecture/platform/networking/provider/parse_provider.dart';
import 'package:injectable/injectable.dart';

@injectable
class RestaurantRepostoryImpl extends RestaurantRepository {
  RestaurantRepostoryImpl({required ParseProvider parseProvider})
      : _parseProvider = parseProvider;

  final ParseProvider _parseProvider;

  @override
  Future<List<Restaurant>> getRestaurants({int page = 0}) {
    return _parseProvider.getRestaurants();
  }
}
