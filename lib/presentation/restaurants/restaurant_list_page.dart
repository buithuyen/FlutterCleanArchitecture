import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/domain/entity/restaurant.dart';
import 'package:flutter_clean_architecture/presentation/base/base_page.dart';
import 'package:flutter_clean_architecture/presentation/base/base_state.dart';
import 'package:flutter_clean_architecture/presentation/restaurants/cubit/restaurant_list_cubit.dart';
import 'package:flutter_clean_architecture/presentation/restaurants/cubit/restaurant_list_data.dart';

class RestaurantListPage extends StatefulWidget {
  const RestaurantListPage({super.key});

  @override
  State<RestaurantListPage> createState() => _RestaurantListPageState();
}

class _RestaurantListPageState extends BasePageState<RestaurantListPage,
    RestaurantListCubit, RestaurantListData> {
  @override
  void initState() {
    cubit.initRetaurantList();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  void onDataChange(BuildContext context, RestaurantListData data) {
    // TODO: implement onDataChange
    super.onDataChange(context, data);
  }

  @override
  Widget buildPage(BuildContext context, RestaurantListData data) {
    return Scaffold(
      appBar: buildAppBar(context: context, title: 'Restaurants'),
      body: SafeArea(
        child: _buildBody(context, data),
      ),
    );
  }

  Widget _buildBody(BuildContext context, RestaurantListData data) {
    final state = data.state;

    if (state is InitialState) {
      return const SizedBox.shrink();
    }
    if (state is LoadingState) {
      return buildLoadingWidget();
    }

    final restaurants = data.restaurants ?? [];
    if (restaurants.isEmpty) {
      return buildNoContentWidget();
    }

    return _buildRestaurantList(restaurants);
  }

  Widget _buildRestaurantList(List<Restaurant> restaurants) {
    return ListView.builder(
      itemCount: restaurants.length,
      itemBuilder: (context, index) {
        final restaurant = restaurants[index];
        return _buildRestaurantItem(context, index, restaurant);
      },
    );
  }

  Widget _buildRestaurantItem(
    BuildContext context,
    int index,
    Restaurant restaurant,
  ) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(restaurant.name ?? ''),
      ),
    );
  }
}
