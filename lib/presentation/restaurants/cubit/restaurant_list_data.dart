import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:flutter_clean_architecture/domain/entity/restaurant.dart';
import 'package:flutter_clean_architecture/presentation/base/base_data.dart';
import 'package:flutter_clean_architecture/presentation/base/base_state.dart';

part 'restaurant_list_data.g.dart';

@CopyWith()
class RestaurantListData extends BaseData {
  RestaurantListData({BaseState? state, this.restaurants})
      : super(state ?? InitialState());

  final List<Restaurant>? restaurants;
}
