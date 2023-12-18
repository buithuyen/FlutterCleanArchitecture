import 'package:flutter_clean_architecture/domain/usecase/restaurant_usecase.dart';
import 'package:flutter_clean_architecture/presentation/base/base_cubit.dart';
import 'package:flutter_clean_architecture/presentation/base/base_state.dart';
import 'package:flutter_clean_architecture/presentation/restaurants/cubit/restaurant_list_data.dart';
import 'package:flutter_clean_architecture/utilities/helpers/network_exception_handler.dart';
import 'package:injectable/injectable.dart';

@injectable
class RestaurantListCubit extends BaseCubit<RestaurantListData> {
  RestaurantListCubit({
    required RestaurantUsecase restaurantUsecase,
    required NetworkExceptionHandler networkExceptionHandler,
  })  : _restaurantUsecase = restaurantUsecase,
        _exceptionHandler = networkExceptionHandler,
        super(RestaurantListData());

  final RestaurantUsecase _restaurantUsecase;
  final NetworkExceptionHandler _exceptionHandler;

  @override
  void dispose() {}

  Future<void> initRetaurantList() async {
    emit(state.copyWith(state: LoadingState()));
    try {
      final restaurants = await _restaurantUsecase.getInitialRestaurantList();
      emit(
        state.copyWith(
          state: SuccessState(),
          restaurants: restaurants,
        ),
      );
    } catch (error) {
      emit(
        state.copyWith(
          state: ErrorState(error: _exceptionHandler.parse(error)),
        ),
      );
    }
  }

  void refreshRestaurantList() {}

  void getMoreRestaurants() {}
}
