import 'package:flutter/material.dart';
import 'package:yelp2/providers/data_provider.dart';
import 'package:yelp2/providers/restaurant_provider.dart';
import 'package:yelp2/restaurants_card.dart';
import 'package:yelp2/screen.dart';

class RegionRestaurantsScreenArgs {
  final String region;

  const RegionRestaurantsScreenArgs({required this.region});
}

class RegionRestaurantsScreen extends StatefulWidget {
  final RegionRestaurantsScreenArgs args;
  const RegionRestaurantsScreen(this.args, {Key? key}) : super(key: key);

  @override
  State<RegionRestaurantsScreen> createState() =>
      _RegionRestaurantsScreenState();
}

class _RegionRestaurantsScreenState extends State<RegionRestaurantsScreen> {
  List<Restaurant> restaurants = [];

  @override
  void initState() {
    super.initState();
    ProviderFactory.get(() => RestaurantProvider()).load().then(
        (value) => setState(() => restaurants = value as List<Restaurant>));
  }

  @override
  Widget build(BuildContext context) {
    return Screen(
      onFabTab: _addRestaurant,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(widget.args.region),
          Column(
            children:
                restaurants.map((Restaurant r) => RestaurantCard(r)).toList(),
          )
        ],
      ),
    );
  }

  void _addRestaurant() {}
}
