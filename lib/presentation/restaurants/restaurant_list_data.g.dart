// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_list_data.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$RestaurantListDataCWProxy {
  RestaurantListData state(BaseState? state);

  RestaurantListData restaurants(List<Restaurant>? restaurants);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `RestaurantListData(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// RestaurantListData(...).copyWith(id: 12, name: "My name")
  /// ````
  RestaurantListData call({
    BaseState? state,
    List<Restaurant>? restaurants,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfRestaurantListData.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfRestaurantListData.copyWith.fieldName(...)`
class _$RestaurantListDataCWProxyImpl implements _$RestaurantListDataCWProxy {
  const _$RestaurantListDataCWProxyImpl(this._value);

  final RestaurantListData _value;

  @override
  RestaurantListData state(BaseState? state) => this(state: state);

  @override
  RestaurantListData restaurants(List<Restaurant>? restaurants) =>
      this(restaurants: restaurants);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `RestaurantListData(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// RestaurantListData(...).copyWith(id: 12, name: "My name")
  /// ````
  RestaurantListData call({
    Object? state = const $CopyWithPlaceholder(),
    Object? restaurants = const $CopyWithPlaceholder(),
  }) {
    return RestaurantListData(
      state: state == const $CopyWithPlaceholder()
          ? _value.state
          // ignore: cast_nullable_to_non_nullable
          : state as BaseState?,
      restaurants: restaurants == const $CopyWithPlaceholder()
          ? _value.restaurants
          // ignore: cast_nullable_to_non_nullable
          : restaurants as List<Restaurant>?,
    );
  }
}

extension $RestaurantListDataCopyWith on RestaurantListData {
  /// Returns a callable class that can be used as follows: `instanceOfRestaurantListData.copyWith(...)` or like so:`instanceOfRestaurantListData.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$RestaurantListDataCWProxy get copyWith =>
      _$RestaurantListDataCWProxyImpl(this);
}
