// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_clean_architecture/domain/respository/restaurant_respository.dart'
    as _i4;
import 'package:flutter_clean_architecture/domain/usecase/restaurant_usecase.dart'
    as _i7;
import 'package:flutter_clean_architecture/platform/networking/provider/parse_provider.dart'
    as _i6;
import 'package:flutter_clean_architecture/platform/respository/restaurant_repository_impl.dart'
    as _i5;
import 'package:flutter_clean_architecture/platform/usecase/restaurant_usecase_impl.dart'
    as _i8;
import 'package:flutter_clean_architecture/presentation/restaurants/cubit/restaurant_list_cubit.dart'
    as _i9;
import 'package:flutter_clean_architecture/utilities/helpers/network_exception_handler.dart'
    as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.NetworkExceptionHandler>(
        () => _i3.NetworkExceptionHandler());
    gh.factory<_i4.RestaurantRepository>(() =>
        _i5.RestaurantRepostoryImpl(parseProvider: gh<_i6.ParseProvider>()));
    gh.factory<_i7.RestaurantUsecase>(() => _i8.RestaurantUsecaseImpl(
        restaurantRepository: gh<_i4.RestaurantRepository>()));
    gh.factory<_i9.RestaurantListCubit>(() => _i9.RestaurantListCubit(
          restaurantUsecase: gh<_i7.RestaurantUsecase>(),
          networkExceptionHandler: gh<_i3.NetworkExceptionHandler>(),
        ));
    return this;
  }
}
